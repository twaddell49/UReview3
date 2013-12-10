class Game < ActiveRecord::Base
	attr_accessible :title, :esrb, :description, :release_date, :console, :players

	def Game.all_esrb
		esrb = ['E', 'T', 'M', 'A']
		return esrb
	end

	def Game.all_consoles
		consoles = ['Xbox 360', 'Wii', 'PS3']
		return consoles
	end

	validates :title, :presence => true
	validates :description, :presence => true
	validates :release_date, :presence => true
	validates :players, :presence => true

	validates :esrb, :inclusion => {:in => Game.all_esrb}
	validates :console, :inclusion => {:in => Game.all_consoles}
end