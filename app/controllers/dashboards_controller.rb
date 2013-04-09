class DashboardsController < ApplicationController
  skip_before_filter :verify_authenticity_token
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
