class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :age
      t.string :phone_number
      t.string :email
      t.text :computer_languages
      t.text :pets

      t.timestamps null: false
    end
  end
end
