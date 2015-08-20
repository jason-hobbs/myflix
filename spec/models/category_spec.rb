require 'rails_helper'

describe Category do
  it "saves itself" do
    cat = Category.new(name: "Comedy")
    cat.save
    expect(Category.first).to eq(cat)
  end

  it "has many videos" do
    cat = Category.new(name: "Comedy")
    cat.save
    cat = Category.first
    video = Video.new(title: "Monk", desc: "A great video!")
    video.category = cat
    video.save
    video2 = Video.new(title: "Family Guy", desc: "A great video!")
    video2.category = cat
    video2.save
    expect(cat.videos.count).to eq(2)
  end
end
