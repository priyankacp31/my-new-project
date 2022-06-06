class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :ename
      t.string :eDesignation
    

      t.timestamps
    end
  end
end
