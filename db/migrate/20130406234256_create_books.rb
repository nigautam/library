class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :bookTitle
      t.string :author
      t.string :bookDescription
      t.integer :isbn
      t.string :userName
      t.date :signOutDate
      t.date :dueDate
      t.integer :lateFee
      t.integer :category
      t.boolean :onHold
      t.boolean :overDue

      t.timestamps
    end
  end
end
