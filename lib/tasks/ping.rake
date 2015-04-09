require 'net/ping'
include Net

namespace :ping do

  desc "Ping all sites"
  task :tcp => :environment do
    Ping::TCP.service_check = true

    Site.all.each do |site|
      pt = Net::Ping::TCP.new(site.host)

      puts site.host

      if pt.ping
        puts "TCP ping successful"
      else
        puts "TCP ping unsuccessful: #{pt.exception}"
      end
    end
  end

end
