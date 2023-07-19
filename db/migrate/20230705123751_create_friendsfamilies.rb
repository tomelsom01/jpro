class CreateFriendsfamilies < ActiveRecord::Migration[7.0]
  def change
    create_table :friendsfamilies do |t|

      t.timestamps
    end
  end
end
