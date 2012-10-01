class Reminder < ActiveRecord::Base
  attr_accessible :description, :phone_number
  
  def send_welcome_text
    @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']  
    @client.account.sms.messages.create(
      :from => '+14158684100',
      :to => self.phone_number,
      :body => "Welcome to Remind Me Randomly! You will now receive your reminder (#{description}) at random intervals"
    )
  end
  
  def send_reminder
    @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']  
    @client.account.sms.messages.create(
      :from => '+14158684100',
      :to => self.phone_number,
      :body => "#{description}"
    )
  end
  
  
  
end
