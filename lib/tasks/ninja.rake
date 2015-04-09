require 'open-uri'

namespace :ninja do

  desc "Visit all sites"
  task :visit_all => :environment do
    Site.all.each do |site|
      puts "--\n#{site.absolute_url}"

      begin
        open(site.absolute_url)
        puts "Success!"
      rescue => e
        puts e.message
      end
    end
  end

end
