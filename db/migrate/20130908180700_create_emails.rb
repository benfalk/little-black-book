class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|

      t.string :emailable_type
      t.string :emailable_id

      t.string :type

      t.string :address

      t.timestamps
    end
  end
end
