desc "Send reminder to users"
task :send_reminder => :environment do
    puts "finding reminders"
    reminders = Reminder.all
    puts "sending sms to all users"
    reminders.each {|reminder| reminder.send_reminder}
    puts "...complete."
end