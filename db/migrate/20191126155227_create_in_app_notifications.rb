class CreateInAppNotifications < ActiveRecord::Migration[5.2]
	def change
		create_table :in_app_notifications do |t|
			t.timestamps
		end
	end
end
