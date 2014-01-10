class AppsController < ApplicationController
  
  def new
    @app = Application.new
  end
  
  def create
    #Instantiate a new object using form parameters
    @app= Application.new(params[:application])
    #Save the object
    if @app.save
      #If save succeeds redirect to the list action
      flash[:notice]="Application has been sent"
      redirect_to(home_index)
    else
      #If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

end
