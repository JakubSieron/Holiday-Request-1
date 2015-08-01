class AddEmployeeIdToHrs < ActiveRecord::Migration
  def change
    add_column :hrs, :employee_id, :integer
  end
end
