class NotificationCreator
	def initialize(params = {})
		@params = params
	end

	def generate
		begin
			notifier = @params[:type].constantize.new(@params)
			notifier.notify
		rescue
			notifier = Notification.new
		end

		notifier
	end
end