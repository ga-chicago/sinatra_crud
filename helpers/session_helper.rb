module Session_Helper

  # are we authenticated?
  def is_authenicated?
    if session[:current_user].nil?
      return false
    else
      return true
    end
  end

  def current_user
    return session[:current_user]
  end

end
