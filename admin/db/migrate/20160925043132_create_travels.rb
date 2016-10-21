class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.string :title
      t.integer :idtype
      t.string :image

      t.timestamps null: false
    end
  end
end
