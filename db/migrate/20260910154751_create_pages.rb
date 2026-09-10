class CreatePages < ActiveRecord::Migration[8.1]
  def change
    create_table :pages do |t|
      t.text :title
      t.text :subtitle
      t.text :slug
      t.datetime :published_at
      t.datetime :archived_at

      t.timestamps
    end
  end
end
