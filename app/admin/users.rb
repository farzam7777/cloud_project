ActiveAdmin.register User do
permit_params :email, :password, :password_confirmation

	scope :google_users
	scope :facebook_users
	scope :site_users

	index do
	  selectable_column
	  column :id
	  column :email	
	  column :sign_in_count																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										
	  actions
	end

	form multipart: true do |f|
	  f.inputs "User Details" do
	  	f.input :email
	  	if f.object.id.nil?
        f.inputs "Password" do
	        f.input :password,              :label => "Password"																																																																																																																																																																																																																																																																																																												   
	        f.input :password_confirmation, :label => "Password Confirmation"
      	end
    	end
	  end
	  f.button :Submit
	end

	filter :email

end
