require 'rails_helper'

describe Video do
  it "saves itself" do
    video = Video.new(title: "Monk", desc: "A great video!")
    video.save
    expect(Video.first).to eq(video)
  end

  it "has a category" do
    cat = Category.new(name: "Comedy")
    cat.save
    video = Video.new(title: "Monk", desc: "A great video!")
    video.category = cat
    video.save
    vid = Video.first
    expect(vid.category.name).to eq(video.category.name)
  end
end
