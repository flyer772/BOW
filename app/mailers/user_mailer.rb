class UserMailer < ActionMailer::Base
  def city_app(application) 
   @application = application
   @user  = User.find(1)
   mail(:from => "cobimoos100@gmail.com", :to => @user.email, :subject => "New Host City Application")
  end 
  
end

