class CreateEmployeeServices < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_services do |t|
      t.integer :employee_id
      t.integer :services_id
      t.timestamps
    end
  end
end
