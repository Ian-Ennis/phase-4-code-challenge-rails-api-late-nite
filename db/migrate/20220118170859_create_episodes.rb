class CreateEpisodes < ActiveRecord::Migration[6.1]
  def change
    create_table :episodes do |t|
      t.string :date
      t.integer :number

      t.timestamps
    end
  end
end
