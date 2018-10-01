module ApplicationHelper
  def task_label(status)
    if status == "Overdue"
      "<span class='label round alert'>#{status}</span>"
    elsif status == "Completed"
      "<span class='label round success'>#{status}</span>"
    else
      "<span class='label round secondary'>#{status}</span>"
    end
  end
    
  def priority_label(priority)
    "<span class='label round secondary'>"+priority+"</span>"
  end
end
