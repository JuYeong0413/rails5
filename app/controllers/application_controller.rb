class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper # 컨트롤러에서 헬퍼 사용하기 위함
end
