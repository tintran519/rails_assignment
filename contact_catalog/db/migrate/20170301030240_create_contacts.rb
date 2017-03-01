class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :age
      t.string :phone_number
      t.string :email
      t.string :computer_languages
      t.string :pets

      t.timestamps null: false
    end
  end
end
