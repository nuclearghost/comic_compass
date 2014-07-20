require 'rails_helper'

RSpec.describe "events/edit", :type => :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :title => "MyString",
      :description => "MyText",
      :shop => nil
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_title[name=?]", "event[title]"

      assert_select "textarea#event_description[name=?]", "event[description]"

      assert_select "input#event_shop_id[name=?]", "event[shop_id]"
    end
  end
end
