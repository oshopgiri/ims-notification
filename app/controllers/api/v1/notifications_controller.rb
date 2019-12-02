class API::V1::NotificationsController < API::V1Controller
	before_action :set_notification, only: [:show, :update, :destroy]

	# GET /api/v1/notifications
	def index
		@notifications = Notification.all

		render json: @notifications
	end

	# GET /api/v1/notifications/1
	def show
		render json: @notification
	end

	# POST /api/v1/notifications
	def create
		@notification = NotificationCreator.new(notification_params).generate

		if @notification.save
			render json: @notification, status: :created, location: @notification
		else
			render json: @notification.errors, status: :unprocessable_entity
		end
	end

	# PATCH/PUT /api/v1/notifications/1
	def update
		if @notification.update(notification_params)
			render json: @notification
		else
			render json: @notification.errors, status: :unprocessable_entity
		end
	end

	# DELETE /api/v1/notifications/1
	def destroy
		@notification.destroy
	end

	private

		def set_notification
			@notification = Notification.find(params[:id])
		end

		def notification_params
			params.require(:notification).permit(:user_uuid, :body, :type)
		end
end
