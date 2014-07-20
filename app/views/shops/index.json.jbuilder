json.array!(@shops) do |shop|
  json.extract! shop, :id, :name, :address, :address2, :city, :state, :scf, :zip, :mailscore, :sic1code, :sic1, :sic2code, :sic2, :sic3code, :sic3, :sic4code, :sic4, :latitude, :longitude, :foursquare_id, :email, :phone, :user_id
  json.url shop_url(shop, format: :json)
end
