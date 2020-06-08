class CreateScenes < ActiveRecord::Migration[5.2]
  def change
    create_table :scenes do |t|
      t.string :area,             null: false
      t.text :image,            null: false
      t.string :text
      t.string :date,             null: false
      t.references :user
      t.timestamps
    end
  end
end
