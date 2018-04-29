ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
    end

    columns do
      column do
        panel "Recent Rooms" do
          ul do
            Room.last(5).map do |room|
              li link_to(room, admin_room_path(room))
            end
          end
        end
      end
    end

    columns do
      column do
        panel "Recent Users" do
          ul do
            User.last(5).map do |user|
              li link_to(user.username, admin_user_path(user))
            end
          end
        end
      end
    end

    columns do
      column do
        panel "Recent Bookings" do
          ul do
            Booking.last(5).map do |booking|
              li link_to(booking, admin_booking_path(booking))
            end
          end
        end
      end
    end

  end
end
