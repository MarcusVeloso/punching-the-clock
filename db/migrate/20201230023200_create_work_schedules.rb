class CreateWorkSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :work_schedules do |t|
      t.integer :day
      t.references :user, foreign_key: true
      t.time :start_work
      t.time :end_work

      t.timestamps
    end
  end
end
