class AccountsController < ApplicationController
  def index
    @username = Username.find(params[:id])
    @account = @username.account.all
  end
  def new
    @username = Username.find(params[:username_id])
    @account = @username.accounts.new
  end

  def create
    @username = Username.find(params[:username_id])
    @account = @username.accounts.new(account_params)
    if @account.save
      redirect_to username_path(@account.username)
    else
      render :new
    end
  end

  def show
  end

  def edit
    @username = Username.find(params[:username_id])
    @account = Account.find(params[:id])
  end

  def update
    @username = Username.find(params[:username_id])
    @account = Account.find(params[:id])
    if @account.update(account_params)
      redirect_to username_path(@account.username)
    else
      render :edit
    end
  end

  def destroy
    @username = Username.find(params[:username_id])
    @account = Account.find(params[:id])
    @account.destroy
    redirect_to username_path(@account.username)
  end


  private
    def account_params
      params.require(:account).permit(:application, :user, :password)
    end  
end
