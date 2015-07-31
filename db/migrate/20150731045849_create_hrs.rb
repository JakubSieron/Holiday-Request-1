class CreateHrs < ActiveRecord::Migration
  def change
    create_table :hrs do |t|
      t.string :from
      t.string :to

      t.timestamps
    end
  end
end
