class UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def new
  @user = User.new
end

def create
  @user = User.new(params[:user])
  if @user.save
    redirect_to root_path, :notice => "Signed up!"
  else
    render "new"
  end
end
def index
  @users = User.all
  respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
end

def destroy
    @users= User.find(params[:id])
      @users.destroy
    respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
    end
  end
end