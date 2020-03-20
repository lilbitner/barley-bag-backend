class CreateBags < ActiveRecord::Migration[6.0]
  def change
    create_table :bags do |t|
      t.string :fabric
      t.string :size
      t.string :favor
      t.string :title 
      t.string :email 

      t.timestamps
    end
  end
end
