class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :nick_name 
      t.string :company
      t.string :department
      t.string :title

      t.timestamps
    end
  end
end
