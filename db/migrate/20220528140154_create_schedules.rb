class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title, null:false
      t.string :start_date
      t.string :finish_date
      t.boolean :full_day
      t.text :memo

      t.timestamps
    end
  end
end
