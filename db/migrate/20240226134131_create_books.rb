class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :author
      t.text :summary
      t.string :year
      t.string :isbn_number
      t.string :book_picture
      t.string :editor
      t.string :status

      t.timestamps
    end
  end
end
