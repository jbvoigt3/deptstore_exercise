class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :pname
      t.belongs_to :dept, foreign_key: true

      t.timestamps
    end
  end
end
