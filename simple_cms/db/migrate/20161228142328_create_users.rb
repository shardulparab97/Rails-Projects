class CreateUsers < ActiveRecord::Migration[5.0]
  #def change
   # create_table :users do |t|
#
 #     t.timestamps
  #  end
#  end
  def up #here we have been able to create a table
    create_table :users do |t|
      t.column "first_name", :string, :limit => 40#migrations try to be database independent
      t.string "last name" , :limit =>40
      t.string "email", :default => ' ',:null=>false
      t.string "password", :limit => 40
      t.timestamps
    end
  end
  
  def down
    drop_table :users
  end
end
