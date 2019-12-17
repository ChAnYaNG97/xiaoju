class ApplicationController < ActionController::Base
    protect_from_forgery
    before_action :authorize_user

    private
        def current_user
            User.find_by_id(session[:user_id])
        rescue ActiveRecord::RecordNotFound
            redirect_to login_url, notice: 'Please Login'
        end

        def authorize_user
            unless User.find_by_id(session[:current_user_id])
                redirect_to login_url, notice: 'Please Login'
            end
        end
end
