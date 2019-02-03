class AddColoumnsToRecords < ActiveRecord::Migration[5.2]
  def change

    add_column :records, :student_id, :integer
    add_index :records, :student_id    
    add_column :records, :subject_id, :integer
    add_index :records, :subject_id







  end
end
