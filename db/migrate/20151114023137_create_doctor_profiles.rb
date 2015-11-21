class CreateDoctorProfiles < ActiveRecord::Migration
  def change
    create_table :doctor_profiles do |t|
      t.string :name
      t.string :role
      t.string :specialty
      t.string :hospital
      t.string :photo

      t.timestamps null: false
    end
  end
end
