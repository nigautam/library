class UsersController < ApplicationController
  def new
  @user = User.new
end

def create
  @user = User.new(params[:user])
  if @user.save
    redirect_to root_url, :notice => "Signed up!"
  else
    render "new"
  end
end
def index
  @user = User.all
  respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
end
end
