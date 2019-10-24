class CreateSitters < ActiveRecord::Migration[6.0]
  def change
    create_table :sitters do |t|
      t.string :name
      t.timestamps
    end
  end
end
