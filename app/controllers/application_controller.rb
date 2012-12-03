class ApplicationController < ActionController::Base
  before_filter :authorize
  protect_from_forgery
  
  protected
  
    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to login_url, notice: "Please log in"
      end
    end
    
    def authorize_admin
      unless User.find_by_id(session[:user_id]).user_type == 'teacher'
        redirect_to list_questions_url
      end
    end
end
