class AddUserToDoctorProfile < ActiveRecord::Migration
  def change
    add_reference :doctor_profiles, :user, index: true, foreign_key: true
  end
end
