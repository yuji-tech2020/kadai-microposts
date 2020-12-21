module SessionsHelper
 
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    # →セッションのユーザー情報を持って来る。||→@current_userが入っていなかったら右辺を使用する。
  end

  def logged_in?
    !!current_user
  end

end
