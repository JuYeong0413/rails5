class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email]) # 대소문자 구분 없이 : .downcase
    if user && user.authenticate(params[:password]) # text로 입력한 password를 해쉬값으로 바꿈
      session[:user_id] = user.id
      redirect_to '/'
    else
      flash[:alert] = 'Invalid email/password combination'# flash에 메세지를 넣게 되면 다음 액션에서 호출해서 사용 가능
      redirect_to new_session_path
    end
  end
end
