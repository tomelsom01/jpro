class CreatePlays < ActiveRecord::Migration[7.0]
  def change
    create_table :plays do |t|
      t.string :title
      t.string :date
      t.string :location

      t.timestamps
    end
  end
end
