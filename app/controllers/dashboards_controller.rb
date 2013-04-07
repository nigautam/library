class DashboardsController < ApplicationController
  # GET /dashboards
  # GET /dashboards.json
  def index
    @books= Book.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @books }
    end
  end

 
end
