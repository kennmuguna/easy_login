class UsernamesController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]
  def index
    @usernames = Username.all
  end
  
  def new
    @username = Username.new
  end

  def create
    @username = Username.new(username_params)
    if @username.save
      redirect_to usernames_path
    else
      render :new
    end
  end

  def show
    @username = Username.find(params[:id])
  end

  def edit
    @username = Username.find(params[:id])
  end

  def update
    @username = Username.find(params[:id])
    if @username.update(username_params)
      redirect_to usernames_path
    else
      render :edit
    end
  end
  
  def destroy
    @username = Username.find(params[:id])
    @username.destroy
    redirect_to usernames_path
  end
  
  private 
    def username_params
      params.require(:username).permit(:name, :email)
    end

end
