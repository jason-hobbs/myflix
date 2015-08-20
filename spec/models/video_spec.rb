require 'rails_helper'

describe Video do
  it {should belong_to(:category)}
  it {should validate_presence_of(:title)}
  it {should validate_presence_of(:desc)}

#  it "saves itself" do
#    video = Video.new(title: "Monk", desc: "A great video!")
#    video.save
#    expect(Video.first).to eq(video)
#  end

#  it "has a category" do
#    cat = Category.new(name: "Comedy")
#    cat.save
#    video = Video.new(title: "Monk", desc: "A great video!")
#    video.category = cat
#    video.save
#    vid = Video.first
#    expect(vid.category.name).to eq(video.category.name)
#  end

#  it "does not save without a title" do
#    video = Video.create(desc: "A great video!")
#    expect(Video.count).to eq(0)
#  end

#  it "does not save without a description" do
#    video = Video.create(title: "Monk")
#    expect(Video.count).to eq(0)
#  end
end
