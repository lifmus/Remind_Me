class AddPhoneNumberToReminder < ActiveRecord::Migration
  def change
    add_column :reminders, :phone_number, :string
  end
end
