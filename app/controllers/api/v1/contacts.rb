module API
  module V1
    class Contacts < Grape::API
      # Include configuration common to all API requests
      include API::V1::Defaults

      # This is configuring the accepted requests (show & index equivalents).

      resource :contacts do
        desc "Return all contacts"
        get "", root: :contacts do
          Contact.all
        end

        desc "Return a contact"
        params do
          requires :id, type: String, desc: "ID of the contact"
        end

        get ":id", root: "contact" do
          Contact.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
