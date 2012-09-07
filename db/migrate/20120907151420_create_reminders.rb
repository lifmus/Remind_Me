class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :description

      t.timestamps
    end
  end
end
