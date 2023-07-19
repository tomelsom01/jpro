class CreateCredits < ActiveRecord::Migration[7.0]
  def change
    create_table :credits do |t|
      t.string :name

      t.timestamps
    end
  end
end
