module ApplicationHelper
   
  def error_messages_for( object )
    render(:partial => 'layouts/error_messages', :locals => {:object => object})
  end
  
 def is_active?(link_path)
  if current_page?(link_path)
    "active"
  else
    ""
  end
 end
  
end
