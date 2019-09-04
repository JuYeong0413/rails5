Rails.application.routes.draw do
  # get 'sessions/new'
  resources :sessions, only: [:new, :create, :destroy]

  # get 'users/new'
  resources :users, only: [:new, :create]

  # get 'contacts/index'
  #
  # get 'contacts/new'
  #
  # # get 'contacts/create'
  # post 'contacts/create'

  resources :contacts, only: [:index, :create, :new] # 컨트롤러 이름과 똑같이 만들면 됨

  get '/' => 'home#hello_world'
  get '/index' => 'home#index'
  get '/contact' => 'home#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # rails routes
  # Prefix Verb URIPattern(도메인 다음에 나오는 세부 도메인) Controller#Action 형태로 나온다.
  # (.:format) (생략할수도 있고 넣을수도 있다, format 정할 수 있다는 것).html .json format을 컨트롤러에서 받아서 처리 가능
end
