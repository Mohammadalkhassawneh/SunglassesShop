class ApplicationController < ActionController::Base
    include ApplicationHelper
    before_action :authenticate_user! 
    def home
        if current_user&.admin
            @lenses = Lense.all
            @frames = Frame.all
            @user = User.all
            render 'admin/index'
        else
            render 'layouts/home'
        end 
    end 
end
