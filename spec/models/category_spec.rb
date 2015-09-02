require 'rails_helper'

describe Category do
  it {should have_many(:videos)}

  describe "recent_videos" do
    it "returns an empty array if there are no videos for a valid category" do
      cat = Category.create(name: "Comedy")
      expect(cat.recent_videos).to eq([])
    end
    it "returns a max of six videos in created at order" do
      cat = Category.create(name: "Comedy")
      test1 = Video.create(title: "test1", desc: "Space Travel", category: cat)
      test2 = Video.create(title: "test2", desc: "Space Travel", category: cat)
      test3 = Video.create(title: "test3", desc: "Space Travel", category: cat)
      test4 = Video.create(title: "test4", desc: "Space Travel", category: cat)
      test5 = Video.create(title: "test5", desc: "Space Travel", category: cat)
      test6 = Video.create(title: "test6", desc: "Space Travel", category: cat)
      test7 = Video.create(title: "test7", desc: "Space Travel", category: cat)
      expect(cat.recent_videos).to eq([test7, test6, test5, test4, test3, test2])
    end
  end

end
