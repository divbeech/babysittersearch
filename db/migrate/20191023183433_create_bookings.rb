class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :parent_id
      t.integer :sitter_id
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      
      t.timestamps
    end
  end
end
