class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :name
      t.string :born
      t.string :birthplace
      t.string :bio
      t.string :source
      t.string :author
      t.string :death
      t.string :image

      t.timestamps
    end
  end
end
