class EmailNotification < Notification
	belongs_to :applied_template

	def notify
		puts 'sending Email Notification'
	end
end
