class CreateStudentProfiles < ActiveRecord::Migration
  def change
    create_table :student_profiles do |t|
      t.string :name
      t.integer :year
      t.string :clinical_school

      t.timestamps null: false
    end
  end
end
