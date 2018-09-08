class CreateDepts < ActiveRecord::Migration[5.2]
  def change
    create_table :depts do |t|
      t.string :dname
      t.string :loc

      t.timestamps
    end
  end
end
