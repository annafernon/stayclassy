class Doctor < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :users_doctors
  belongs_to :resource, :polymorphic => true
  has_one :doctor_profile

  validates :resource_type,
            :inclusion => { :in => Rolify.resource_types },
            :allow_nil => true

  scopify
end
