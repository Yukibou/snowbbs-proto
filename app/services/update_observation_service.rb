class UpdateObservationService
  def split_elevation
    puts 'start..'
    Observation.all.each do |ob|
      puts '---------------'
      puts elv = ob.elevation.strip.delete("@mｍ")
      elvs = elv.split(/[-,～,~,−,ー]/)
      ob.elevation_low = Moji.zen_to_han(elvs[0]).to_i if elvs[0].present?
      ob.elevation_high = Moji.zen_to_han(elvs[1]).to_i if elvs[1].present?
      ob.save!
    end
    puts 'end.'
  end
end