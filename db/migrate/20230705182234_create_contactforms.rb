class CreateContactforms < ActiveRecord::Migration[7.0]
  def change
    create_table :contactforms do |t|

      t.timestamps
    end
  end
end
