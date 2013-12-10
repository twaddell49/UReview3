class CreateGames < ActiveRecord::Migration
  def up
  	create_table 'games' do |t|
  		t.string 'title'
  		t.string 'esrb'
  		t.text 'description'
  		t.datetime 'release_date'
  		t.string 'console'
  		t.string 'players'
  		t.timestamps
  	end
  end

  def down
  	drop_table 'games'
  end
end
