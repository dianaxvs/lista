class CreateContactos < ActiveRecord::Migration[5.2]
  def change
    create_table :contactos do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
