class EventMailer < ActionMailer::Base
  default :from => Rails.configuration.email_contact
  
  def event_submitted(event)
    @event = event
    @date = format_date(@event.date)
    @start = format_time(@event.start)
    @end = format_time(@event.end)
    mail(:to => Rails.configuration.email_contact, :subject => "Event posted: " + event.sig.name)  
  end  
  
  def format_date(date)
    date.month.to_s + "/" + date.day.to_s + "/" + (date.year % 100).to_s
  end
  
  def format_time(time) # For some reason strftime isn't working here
    @meridian = 'am'
    @hour = time.hour
    if time.hour >= 12
      @meridian = 'pm'
      @hour = time.hour - 12
    end
    @hour.to_s + ':' + (time.min < 10 ? '0' : '') + time.min.to_s + " " + @meridian
  end
end