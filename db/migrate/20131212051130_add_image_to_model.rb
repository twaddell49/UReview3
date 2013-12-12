class AddImageToModel < ActiveRecord::Migration
	def self.up
		add_column :games, :image_location, :string
	end
end
