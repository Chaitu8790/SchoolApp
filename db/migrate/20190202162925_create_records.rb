class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :rmarksobt
      t.integer :rtotmarks

      t.timestamps
    end
  end
end
