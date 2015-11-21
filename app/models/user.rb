class User < ActiveRecord::Base
  rolify :role_cname => 'Student'
  rolify :role_cname => 'Doctor'
	has_many :activity_users
	has_many :activities, through: :activity_users
	has_one :doctor_profile
	has_one :student_profile

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
