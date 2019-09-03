class ContactsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @name = params[:name]
    @email = params[:email]
    @content = params[:content]
  end
end
