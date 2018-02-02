class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :student_name
      t.date :dob
      t.string :email
       t.belongs_to :department, index: true,foreign_key: true
      t.timestamps
    end
  end
end
