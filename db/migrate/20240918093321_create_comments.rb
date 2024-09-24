class CreateComments < ActiveRecord::Migration[7.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :user, null: true, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
