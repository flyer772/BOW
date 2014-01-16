class AdminController < ApplicationController
  def index
    @apps = Application.all
  end
  
  def show
    @app = Application.find(params[:id])
  end
end
