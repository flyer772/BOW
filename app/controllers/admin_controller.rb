class AdminController < ApplicationController
  def index
    @apps = Application.all
  end
end
