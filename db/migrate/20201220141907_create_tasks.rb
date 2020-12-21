class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.references :room, foreign_key: true, null: false
      t.timestamps
    end
  end
end
