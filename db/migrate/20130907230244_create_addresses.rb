class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      
      # polymorhic 'addressable' relation
      t.string  :addressable_type
      t.integer :addressable_id

      # single table inheritance
      t.string  :type

      # data fields
      t.string :street
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip
      
      # meta information
      t.string :time_zone
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
