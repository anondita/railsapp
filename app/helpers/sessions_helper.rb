module SessionsHelper
<<<<<<< HEAD
 def log_in(user)
=======
def log_in(user)
>>>>>>> basic-login
    session[:user_id] = user.id
  end
def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
def logged_in?
    !current_user.nil?
  end
<<<<<<< HEAD
=======
def log_out
    session.delete(:user_id)
    @current_user = nil
  end
>>>>>>> basic-login
end
