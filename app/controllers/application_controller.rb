class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper # 컨트롤러에서 헬퍼 사용하기 위함

  def authenticate
    # if !user_signed_in?
    #   redirect_to new_session_path
    # end
    # redirect_to new_session_path if !user_signed_in?
    redirect_to new_session_path unless user_signed_in?
  end

  def authenticate_admin
    unless current_user.admin
      flash[:alert] = 'no admin'
      redirect_to '/'
    end
  end
end
