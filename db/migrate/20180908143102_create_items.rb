class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :iname
      t.integer :cost
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
