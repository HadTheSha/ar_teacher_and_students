class AddColumnToStudents < ActiveRecord::Migration

  def change
    add_reference :students, :teacher, foreign_key: true
  end

end