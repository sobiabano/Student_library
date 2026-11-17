class CreateBookPages < ActiveRecord::Migration[8.1]
  def change
    create_table :book_pages do |t|
      t.references :book, null: false, foreign_key: true
      t.integer :position
      t.string :heading
      t.text :content

      t.timestamps
    end
  end
end
