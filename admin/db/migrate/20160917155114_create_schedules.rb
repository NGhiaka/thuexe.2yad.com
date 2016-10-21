class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.timestamp :startdate
      t.timestamp :enddate
      t.string :startplace
      t.string :endplace

      t.timestamps null: false
    end
  end
end
