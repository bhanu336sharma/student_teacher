class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :roll_no
      t.references :teacher, index: true

      t.timestamps
    end
  end
end
