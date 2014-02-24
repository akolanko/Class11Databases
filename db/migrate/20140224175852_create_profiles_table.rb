class CreateProfilesTable < ActiveRecord::Migration
  def change
  	create_table :profiles do |t|
  		t.string :gender
  		t.string :birthday
  		t.string :city
  		t.string :religion
  		t.string :education
  		t.string :job
  	end
  end
end
