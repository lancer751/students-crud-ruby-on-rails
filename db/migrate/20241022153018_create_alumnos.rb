class CreateAlumnos < ActiveRecord::Migration[7.2]
  def change
    create_table :alumnos do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.integer :dni
      t.integer :address
      t.integer :edad

      t.timestamps
    end
  end
end
