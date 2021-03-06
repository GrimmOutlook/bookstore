class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :category_id
      t.integer :author_id
      t.integer :publisher_id
      t.string :isbn
      t.string :year
      t.decimal :price, precision: 10, scale: 2
      t.string :buy
      t.text :excerpt
      t.string :format
      t.integer :pages

      t.timestamps null: false
    end
  end
end
