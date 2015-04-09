class Site < ActiveRecord::Base
  validates :url, presence: true

  def raw_url
    url.strip.gsub(/(https?:\/\/)*([\w\.\-\.]+)[\w\/]*/i, "\\2")
  end

  def absolute_url
    if url.start_with?("http://")
      "http://#{raw_url}"
    elsif url.start_with?("https://")
      "https://#{raw_url}"
    else
      "http://#{raw_url}"
    end
  end
end
