class SessionsController < ApplicationController

# login in form
  def new
    # if logged_in?
    #   redirect_to recipes_path
  # end
end

# ligin post action
  def create
    user = User.find_by(username: params["username"])

    if user.authenticate(params["password"])
      # do something
      #   log the user in
      session[:user_id] = user.id
      #   send them somewhere
      redirect_to new_ingredient_path
    else
      # render the form again with an error message
      render '/sessions/new'
    end
  end

# logout action
  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end


end
