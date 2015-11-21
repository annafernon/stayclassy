class RolifyCreateDoctors < ActiveRecord::Migration
  def change
    create_table(:doctors) do |t|
      t.string :name
      t.references :resource, :polymorphic => true

      t.timestamps
    end

    create_table(:users_doctors, :id => false) do |t|
      t.references :user
      t.references :doctor
    end

    add_index(:doctors, :name)
    add_index(:doctors, [ :name, :resource_type, :resource_id ])
    add_index(:users_doctors, [ :user_id, :doctor_id ])
  end
end
