class CreateAppearances < ActiveRecord::Migration[6.1]
  def change
    create_table :appearances do |t|
      t.integer :rating
      t.references :episode
      t.references :guest

      t.timestamps
    end
  end
end
