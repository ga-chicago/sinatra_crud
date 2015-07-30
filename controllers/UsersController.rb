class UsersController < ApplicationController

  post "/register" do

    # generate a salt and hash to use
    password_salt = BCrypt::Engine.generate_salt
    password_hash = BCrypt::Engine.hash_secret(params[:password], password_salt)

    new_user = UsersModel.new
    new_user.user_name = params[:user_name]
    new_user.user_email = params[:user_email]
    new_user.password_salt = password_salt
    new_user.password_hash = password_hash
    new_user.is_admin = false

    session[:user_name] = new_user.user_name

    redirect "/"

  end

  post "/login" do
    if userTable.has_key?(params[:username])
      user = userTable[params[:username]]
      if user[:passwordhash] == BCrypt::Engine.hash_secret(params[:password], user[:salt])
        session[:username] = params[:username]
        redirect "/"
      end
    end
    erb :users_login_error
  end

  get "/logout" do
    session[:username] = nil
    redirect "/"
  end

end
