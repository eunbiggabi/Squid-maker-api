class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :company
      t.string :title
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
