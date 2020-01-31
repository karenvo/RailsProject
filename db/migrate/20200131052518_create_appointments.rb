class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :user_id, :default => nil
      t.integer :employee_id, :default => nil
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
