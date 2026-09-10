class CreatePages < ActiveRecord::Migration[8.1]
  def change
    create_table :pages do |t|
      t.text :title, null: false
      t.text :subtitle

      t.text :slug, null: false

      t.datetime :published_at
      t.datetime :archived_at
      t.timestamps
    end

    add_index :pages, :title
    add_index :pages, :slug, unique: true
  end
end
