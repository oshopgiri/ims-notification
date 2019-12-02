class Template < ApplicationRecord
	has_many :applied_templates

	validates :markup, presence: true
	validates :skeleton, presence: true

	def clone
		template = deep_copy(self).attributes.except("id", "created_at", "updated_at")
		template["template"] = self
		template
	end

	private

		def deep_copy(object)
			Marshal.load(Marshal.dump(object))
		end
end
