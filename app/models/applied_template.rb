class AppliedTemplate < ApplicationRecord
	belongs_to :template
	has_many :email_notifications

	validates :markup, presence: true
	validates :skeleton, presence: true
end
