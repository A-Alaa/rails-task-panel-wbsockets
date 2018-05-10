class CreateAlgorithms < ActiveRecord::Migration[5.2]
  def change
    create_table :algorithms do |t|
      t.string :input
      t.string :status
      t.integer :duration

      t.timestamps
    end
  end
end
