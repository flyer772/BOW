class AppsController < ApplicationController
  
  def new
    @app = Application.new
  end
  
  def create
    #Instantiate a new object using form parameters
    @app= Application.new(application_params)
    #Save the object
    if @app.save
      #If save succeeds redirect to the list action
      flash[:notice]="Application has been sent"
      UserMailer.city_app(@app).deliver
      redirect_to(home_index_path)
    else
      #If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

 private

  def application_params
    params.require(:application).permit(:city, :river, :school_address, :school_name, :contact_name, :contact_email, :contact_title, :phone_num, :paragraph)
    # params.require(:application).permit(:river)
    # params.require(:application).permit(:school_name)
    # params.require(:application).permit(:school_address)
    # params.require(:application).permit(:contact_name)
    # params.require(:application).permit(:contact_email)
    # params.require(:application).permit(:contact_title)
    # params.require(:application).permit(:phone_num)
    # params.require(:application).permit(:paragraph)
  end

end
