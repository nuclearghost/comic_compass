require 'rails_helper'

RSpec.describe "shops/show", :type => :view do
  before(:each) do
    @shop = assign(:shop, Shop.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Address2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Scf/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Mailscore/)
    expect(rendered).to match(/Sic1code/)
    expect(rendered).to match(/Sic1/)
    expect(rendered).to match(/Sic2code/)
    expect(rendered).to match(/Sic2/)
    expect(rendered).to match(/Sic3code/)
    expect(rendered).to match(/Sic3/)
    expect(rendered).to match(/Sic4code/)
    expect(rendered).to match(/Sic4/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Foursquare/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(//)
  end
end
