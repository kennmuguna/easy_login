class UsernamesController < ApplicationController
  def new
    @username = Username.new
  end

  def show
    @username = Username.find(params[:id])
  end

  def edit
    @username = Username.find(params[:id])
  end

  def index
    @usernames = Username.all
  end
end
