class CreateRandomcontemplations < ActiveRecord::Migration[7.0]
  def change
    create_table :randomcontemplations do |t|

      t.timestamps
    end
  end
end
