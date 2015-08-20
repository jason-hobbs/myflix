require 'rails_helper'

describe Category do
  it "saves itself" do
    cat = Category.new(name: "Comedy")
    cat.save
    expect(Category.first).to eq(cat)
  end

  it "has videos" do
    cat = Category.new(name: "Comedy")
    cat.save
    cat = Category.first
    video = Video.new(title: "Monk", desc: "A great video!")
    video.category = cat
    video.save
    vid = Video.first
    expect(cat.videos.count).to eq(1)
  end
end
