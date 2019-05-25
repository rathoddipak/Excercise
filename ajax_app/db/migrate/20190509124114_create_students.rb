class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :address
      t.string :cource
      t.integer :age

      t.timestamps
    end
  end
end
