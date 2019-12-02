class CreateAppliedTemplates < ActiveRecord::Migration[5.2]
	def change
		create_table :applied_templates do |t|
			t.text :markup
			t.jsonb :skeleton
			t.references :template

			t.timestamps
		end
	end
end
