class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :index

      t.timestamps
    end
  end
end
