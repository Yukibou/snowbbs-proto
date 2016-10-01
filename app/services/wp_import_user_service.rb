require 'csv'

class WpImportUserService
  def self.call
    csv_data = CSV.read('doc/wp_author.csv', headers: true)
    puts "start..."
      csv_data.each do |cols|
        puts cols[0]
        user = User.find_or_create_by!(email: cols[2]) do |user|
          user.wp_author_id = cols[0]
          user.wp_author_login = cols[1]
          user.password = Rails.application.secrets.admin_password
          user.password_confirmation = Rails.application.secrets.admin_password
          user.confirm
          user.user!
        end
      end

    puts "complete! See intro.txt."
  end
end