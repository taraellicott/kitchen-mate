class ApplicationController < ActionController::Base

  helper_method :logged_in?

    def logged_in?
     !session[:id].nil?
    end
end
