class AddColoumnsToSubject < ActiveRecord::Migration[5.2]
  def change
 	    add_column :subjects, :teacher_id, :integer
        add_index :subjects, :teacher_id      
  end
end
