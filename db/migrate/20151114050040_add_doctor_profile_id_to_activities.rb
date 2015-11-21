class AddDoctorProfileIdToActivities < ActiveRecord::Migration
  def change
    add_reference :activities, :doctor_profile, index: true, foreign_key: true
    remove_column :activities, :doctor_id
  end
end
