class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :text,            null: false, default: ""
      t.references :user,        forigen_key: true
      t.references :prototype,   forigen_key: true

      t.timestamps
    end
  end
end
