class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :company
      t.string :title
      t.string :email
      t.text :message
      t.belongs_to :theme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
