class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :profiles, :job, :employment
  end
end
