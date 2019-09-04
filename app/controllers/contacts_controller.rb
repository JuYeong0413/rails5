class ContactsController < ApplicationController
  before_action :authenticate, only: [:index]
  before_action :authenticate_admin, only: [:index]
  def index
    @all_contacts = Contact.all # 배열 형태로 담기게 된다.
  end

  def new
  end

  def create
    @name = params[:name]
    @email = params[:email]
    @content = params[:content]

    new_contact = Contact.new(name: @name, email: @email, content: @content)
    if new_contact.save
      # save가 됐을 때 데이터베이스에 완전히 제대로 저장이 된다면 리턴값은 true,
      # save하는 과정에 문제가 생기게 되어서 실패하면 false를 리턴
      # redirect_to "/contacts/index"
      redirect_to contacts_path
    else
      # redirect_to "/contacts/new"
      redirect_to new_contact_path
    end
  end
end
