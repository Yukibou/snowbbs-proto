require 'nokogiri'
class WpImportObservationService
  def self.call
    puts "start..."

    file = File.read('doc/wordpress.xml')
    xml = Nokogiri::XML(file)

    item_nodes = xml.xpath('//item')
    item_nodes.each_with_index do |item, i|
      puts title =item.xpath('title').text
      ob = Observation.find_or_initialize_by(title: title)
      ob.description = item.xpath('description').text
      ob.link = item.xpath('link').text
      ob.pub_date = item.xpath('pubDate').text.to_datetime
      creator = item.xpath('dc:creator').text
      puts '--user--'
      puts creator
      ob.user = User.find_by(wp_author_login: creator)

      ob.wp_post_id = item.xpath('wp:post_id').text
      ob.posted_at = item.xpath('wp:post_date').text.to_datetime


      meta_nodes = item.xpath('wp:postmeta')
      cols = {}
      # values = meta_nodes.map do |node|
      meta_nodes.each do |node|
        key = node.xpath('wp:meta_key').text
        # 読み飛ばし属性
        unless key =~ /^_/ || key == 'i'
          value = node.xpath('wp:meta_value').text
          cols[key] = value
          # node.xpath('wp:meta_value').text
        end
      end
      if ob.valid?
        ob.save
      else
        puts ob.errors.messages
      end
    end
    puts "complete! See intro.txt."
  end
end