module ApplicationHelper
  def newTimeFormat(time)
    time.strftime("%Y-%m-%d | %H:%M:%S")
  end
end
