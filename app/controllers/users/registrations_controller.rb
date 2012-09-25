class Users::RegistrationsController < Devise::RegistrationsController
  prepend_view_path "app/views/devise"

    def create
      super
      # Generate your profile here
      # ...
    end

    def update
      super
    end
end
