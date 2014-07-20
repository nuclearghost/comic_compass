require 'rails_helper'

RSpec.describe "shops/index", :type => :view do
  before(:each) do
    assign(:shops, [
      Shop.create!(
        :name => "Name",
        :address => "Address",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :scf => "Scf",
        :zip => "Zip",
        :mailscore => "Mailscore",
        :sic1code => "Sic1code",
        :sic1 => "Sic1",
        :sic2code => "Sic2code",
        :sic2 => "Sic2",
        :sic3code => "Sic3code",
        :sic3 => "Sic3",
        :sic4code => "Sic4code",
        :sic4 => "Sic4",
        :latitude => 1.5,
        :longitude => 1.5,
        :foursquare_id => "Foursquare",
        :email => "Email",
        :phone => "Phone",
        :user => nil
      ),
      Shop.create!(
        :name => "Name",
        :address => "Address",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :scf => "Scf",
        :zip => "Zip",
        :mailscore => "Mailscore",
        :sic1code => "Sic1code",
        :sic1 => "Sic1",
        :sic2code => "Sic2code",
        :sic2 => "Sic2",
        :sic3code => "Sic3code",
        :sic3 => "Sic3",
        :sic4code => "Sic4code",
        :sic4 => "Sic4",
        :latitude => 1.5,
        :longitude => 1.5,
        :foursquare_id => "Foursquare",
        :email => "Email",
        :phone => "Phone",
        :user => nil
      )
    ])
  end

  it "renders a list of shops" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Scf".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Mailscore".to_s, :count => 2
    assert_select "tr>td", :text => "Sic1code".to_s, :count => 2
    assert_select "tr>td", :text => "Sic1".to_s, :count => 2
    assert_select "tr>td", :text => "Sic2code".to_s, :count => 2
    assert_select "tr>td", :text => "Sic2".to_s, :count => 2
    assert_select "tr>td", :text => "Sic3code".to_s, :count => 2
    assert_select "tr>td", :text => "Sic3".to_s, :count => 2
    assert_select "tr>td", :text => "Sic4code".to_s, :count => 2
    assert_select "tr>td", :text => "Sic4".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Foursquare".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
