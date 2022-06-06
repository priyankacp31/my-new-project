class AddChangesBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books,:email,:string
    
  end
end
