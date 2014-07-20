ActiveAdmin.register Shop do
  permit_params :name, :address, :address2, :city, :state, :scf, :zip, :mailscore, :sic1code, :sic1, :sic2code, :sic2, :sic3code, :sic3, :sic4code, :sic4, :latitude, :longitude, :foursquare_id, :email, :phone

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
