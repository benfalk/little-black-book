class CreatePhoneNumbers < ActiveRecord::Migration
  def change
    create_table :phone_numbers do |t|
      t.string  :phone_type
      t.string  :callable_type
      t.integer :callable_id
      t.string  :extension
      t.string  :number

      t.timestamps
    end
  end
end
