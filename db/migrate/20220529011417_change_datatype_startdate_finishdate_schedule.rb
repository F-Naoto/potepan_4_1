class ChangeDatatypeStartdateFinishdateSchedule < ActiveRecord::Migration[6.1]
  def change
    change_column :schedules, :start_date, :date
    change_column :schedules, :finish_date, :date
  end
end
