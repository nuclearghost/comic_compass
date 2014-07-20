require 'rails_helper'

RSpec.describe "shops/new", :type => :view do
  before(:each) do
    assign(:shop, Shop.new(
      :name => "MyString",
      :address => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :scf => "MyString",
      :zip => "MyString",
      :mailscore => "MyString",
      :sic1code => "MyString",
      :sic1 => "MyString",
      :sic2code => "MyString",
      :sic2 => "MyString",
      :sic3code => "MyString",
      :sic3 => "MyString",
      :sic4code => "MyString",
      :sic4 => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :foursquare_id => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :user => nil
    ))
  end

  it "renders new shop form" do
    render

    assert_select "form[action=?][method=?]", shops_path, "post" do

      assert_select "input#shop_name[name=?]", "shop[name]"

      assert_select "input#shop_address[name=?]", "shop[address]"

      assert_select "input#shop_address2[name=?]", "shop[address2]"

      assert_select "input#shop_city[name=?]", "shop[city]"

      assert_select "input#shop_state[name=?]", "shop[state]"

      assert_select "input#shop_scf[name=?]", "shop[scf]"

      assert_select "input#shop_zip[name=?]", "shop[zip]"

      assert_select "input#shop_mailscore[name=?]", "shop[mailscore]"

      assert_select "input#shop_sic1code[name=?]", "shop[sic1code]"

      assert_select "input#shop_sic1[name=?]", "shop[sic1]"

      assert_select "input#shop_sic2code[name=?]", "shop[sic2code]"

      assert_select "input#shop_sic2[name=?]", "shop[sic2]"

      assert_select "input#shop_sic3code[name=?]", "shop[sic3code]"

      assert_select "input#shop_sic3[name=?]", "shop[sic3]"

      assert_select "input#shop_sic4code[name=?]", "shop[sic4code]"

      assert_select "input#shop_sic4[name=?]", "shop[sic4]"

      assert_select "input#shop_latitude[name=?]", "shop[latitude]"

      assert_select "input#shop_longitude[name=?]", "shop[longitude]"

      assert_select "input#shop_foursquare_id[name=?]", "shop[foursquare_id]"

      assert_select "input#shop_email[name=?]", "shop[email]"

      assert_select "input#shop_phone[name=?]", "shop[phone]"

      assert_select "input#shop_user_id[name=?]", "shop[user_id]"
    end
  end
end
