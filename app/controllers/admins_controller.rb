class AdminsController < ApplicationController
  # GET /admins
  # GET /admins.json
  def index
    @books= Book.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @books }
    end
  end

  # GET /admins/1
  # GET /admins/1.json
  def show
   redirect_to '/admins'
  end

  # GET /admins/new
  # GET /admins/new.json
  def new
     @user = User.new
  end

  # GET /admins/1/edit
  def edit
    redirect_to '/admins'
  end

  # POST /admins
  # POST /admins.json
  def create
   @user = User.new(params[:user])
  if @user.save
    WelcomeMailer.email(@user.email,"Welcome to cloud library").deliver
    redirect_to root_url, :notice => "Signed up!"
  else
    render "new"
  end
    end
  end

  # PUT /admins/1
  # PUT /admins/1.json
  def update
    redirect_to '/admins'
  end

  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    redirect_to '/admins'
  end
