class CreateTemplates < ActiveRecord::Migration[5.2]
	def change
		create_table :templates do |t|
			t.text :markup
			t.jsonb :skeleton

			t.timestamps
		end
	end
end
