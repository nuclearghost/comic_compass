require 'rails_helper'

RSpec.describe "photos/new", :type => :view do
  before(:each) do
    assign(:photo, Photo.new(
      :title => "MyString",
      :url => "MyString",
      :shop => nil
    ))
  end

  it "renders new photo form" do
    render

    assert_select "form[action=?][method=?]", photos_path, "post" do

      assert_select "input#photo_title[name=?]", "photo[title]"

      assert_select "input#photo_url[name=?]", "photo[url]"

      assert_select "input#photo_shop_id[name=?]", "photo[shop_id]"
    end
  end
end
