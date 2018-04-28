ActiveAdmin.register Room do
	permit_params :beds, :capacity, :description, :image, :price, :category, :internet, :balcony, :beach_view, 
	 :breakfast, :tv, room_images_attributes: [:id, :room_id, :image, :_destroy]

	form multipart: true do |f|
	  f.inputs "Room Details" do
	  	f.input :beds, label: 'Number of Beds'
	  	f.input :capacity, label: 'Total People Capacity'
	  	f.input :price, label: 'Price per Night'
	  	f.input :category, as: :select, collection: ['Single', 'Double', 'Suite'], include_blank: false
      f.input :internet, as: :select, collection: [['Yes', 1], ['No', 0]], label: 'Free Internet'
      f.input :balcony, as: :select, collection: [['Yes', 1], ['No', 0]], label: 'Private Balcony'
      f.input :beach_view, as: :select, collection: [['Yes', 1], ['No', 0]]
      f.input :breakfast, as: :select, collection: [['Yes', 1], ['No', 0]], label: 'Breakfast Included'
      f.input :tv, as: :select, collection: [['Yes', 1], ['No', 0]], label: 'Flat Screen TV'
	  	f.input :image, :as => :file, :hint => f.object.image.present? \
      ? image_tag(f.object.image.url(:thumb))
      : content_tag(:span, "no image yet")
      f.input :description
      f.inputs "Room Images" do
        f.has_many :room_images, allow_destroy: true do |p|
          p.input :image, :hint => p.object.image.present? \
      ? image_tag(p.object.image.url(:medium))
      : content_tag(:span, "no image yet")
        end
      end
	  end
	  f.button :Submit
	end

	show do
    attributes_table do
      row 'Number of Beds' do
        room.beds
      end
      row 'Total People Capacity' do
        room.capacity
      end
      row 'Price per Night' do
        room.price
      end
      row 'Room Category' do
        room.category
      end
      row 'Free Internet' do
        room.internet == 1 ? 'Yes' : 'No'
      end
      row 'Private Balcony' do
        room.balcony == 1 ? 'Yes' : 'No'
      end
      row 'Beach View' do
        room.beach_view == 1 ? 'Yes' : 'No'
      end
      row 'Breakfast Included' do
        room.breakfast == 1 ? 'Yes' : 'No'
      end
      row 'Flat Screen TV' do
        room.tv == 1 ? 'Yes' : 'No'
      end
      row :image do
        image_tag room.image.url(:medium)
      end
      row "Room Images" do
        ul do
          room.room_images.each do |img|
            li do 
              image_tag(img.image.url(:medium))
            end
          end
        end
      end
    end
    
    active_admin_comments
  end

	index do
	  selectable_column
	  column "Image" do |image|
        image_tag image.image.url(:thumb)
    end
	  column 'Number of Beds' do |room|
	  	room.beds
	  end
	  column 'Total People Capacity' do |room|
	  	room.capacity
	  end
	  column 'Price per Night' do |room|
	  	room.price
	  end
	  column 'Room Category' do |room|
	  	room.category
	  end																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			
	  actions
	end

	filter :beds, label: 'Number of Beds'
  filter :capacity, label: 'Total People Capacity'
  filter :price, label: 'Price per Night'
  filter :category, as: :select, collection: ['Single', 'Double', 'Suite'], label: 'Room Category'
  filter :internet, as: :select, collection: [['Yes', 1], ['No', 0]], label: 'Free Internet'
  filter :balcony, as: :select, collection: [['Yes', 1], ['No', 0]], label: 'Private Balcony'
  filter :beach_view, as: :select, collection: [['Yes', 1], ['No', 0]]
  filter :breakfast, as: :select, collection: [['Yes', 1], ['No', 0]], label: 'Breakfast Included'
  filter :tv, as: :select, collection: [['Yes', 1], ['No', 0]], label: 'Flat Screen TV'
end
