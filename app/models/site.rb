class Site < ActiveRecord::Base
  validates :url, presence: true

  def host
    url.strip.gsub(/(https?:\/\/)*([\w\.\-\.]+)[\w\/]*/i, "\\2")
  end

  def absolute_url
    if url.start_with?("http://")
      "http://#{host}"
    elsif url.start_with?("https://")
      "https://#{host}"
    else
      "http://#{host}"
    end
  end
end
