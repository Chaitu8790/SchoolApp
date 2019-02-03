class AddAvtarColoumnToStudents < ActiveRecord::Migration[5.2]
  def up
    add_attachment :students, :avatar
  end

  def down
    remove_attachment :students, :avatar
  end
end
