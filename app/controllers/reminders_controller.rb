class RemindersController < ApplicationController
  def new
    @reminder = Reminder.new
  end
  
  def create
     @reminder = Reminder.new(params[:reminder])
     @reminder.save
     @reminder.send_welcome_text
     redirect_to :root, notice: 'Reminder was successfully created. Text confirmation incoming'
  end
end
