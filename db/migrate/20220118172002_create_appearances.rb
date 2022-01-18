class CreateAppearances < ActiveRecord::Migration[6.1]
  def change
    create_table :appearances do |t|
      t.integer :rating
      t.references :episode, null: false, foreign_key: true
      t.references :guest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
