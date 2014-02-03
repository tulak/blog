class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :age
      t.string :email
      t.references :article, index: true

      t.timestamps
    end
  end
end
