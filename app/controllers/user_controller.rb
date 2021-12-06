class UsersController < ApplicationController
    def user_params
        params.require(:user).permit(:email_address, :name, :password, :password_confirmation)
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to 'home#index', :notice => "Signed up!"
        end
    end

    def edit
        @user = User.find(current_user.id)
    end

    def update
        @user = User.update(current_user.id, user_params)
    end

    def join_organisation
        organisation = Organisation.find(params[:id])
        if organisation
            User.update(current_user.id, organisation_id: organisation.id)
        end
    end

    def leave_organisation
        User.update(current_user.id, organisation_id: nil)
    end
end
