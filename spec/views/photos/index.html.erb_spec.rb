require 'rails_helper'

RSpec.describe "photos/index", :type => :view do
  before(:each) do
    assign(:photos, [
      Photo.create!(
        :title => "Title",
        :url => "Url",
        :shop => nil
      ),
      Photo.create!(
        :title => "Title",
        :url => "Url",
        :shop => nil
      )
    ])
  end

  it "renders a list of photos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
