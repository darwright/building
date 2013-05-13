class FixTypeColumn < ActiveRecord::Migration
  def change
    rename_column :contractors, :type, :job
  end


end
