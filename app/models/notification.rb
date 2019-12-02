class Notification < ApplicationRecord
	TYPE_IN_APP = 'InAppNotification'.freeze
	TYPE_EMAIL = 'EmailNotification'.freeze
	TYPES = [TYPE_IN_APP, TYPE_EMAIL]

	validates :user_uuid, presence: true
	validates :body, presence: true
	validates :type, presence: true

	def notify
		raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
	end
end
