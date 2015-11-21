class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :doctor_id
      t.text :description
      t.string :activity_type
      t.text :location
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :spots

      t.timestamps null: false
    end
  end
end
