require 'rails_helper'

RSpec.describe Site, type: :model do
  it "is invalid without url" do
    site = FactoryGirl.build(:site, url: nil)

    expect(site).to be_invalid
  end

  describe "#raw_url" do
    it "returns raw url" do
      site = FactoryGirl.build(:site, url: "https://test.com/")

      expect(site.raw_url).to eq("test.com")
    end
  end

  describe "#absolute_url" do
    it "returns absolute url" do
      site = FactoryGirl.build(:site, url: "https://test.com/")
      expect(site.absolute_url).to eq("https://test.com")

      site2 = FactoryGirl.build(:site, url: "test.com/")
      expect(site2.absolute_url).to eq("http://test.com")
    end
  end
end
