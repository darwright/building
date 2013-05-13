class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.string :business
      t.string :name
      t.string :type
      t.string :email
      t.string :phone
      t.string :address
    end
  end
end
