class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
      t.integer :marksobt
      t.integer :totmarks

      t.timestamps
    end
  end
end
