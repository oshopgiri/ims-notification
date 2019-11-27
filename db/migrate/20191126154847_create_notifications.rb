class CreateNotifications < ActiveRecord::Migration[5.2]
	def change
		create_table :notifications do |t|
			t.string :user_uuid
			t.jsonb :body
			t.string :type

			t.timestamps
		end
	end
end
