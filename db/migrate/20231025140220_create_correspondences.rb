class CreateCorrespondences < ActiveRecord::Migration[7.0]
  def change
    create_table :correspondences do |t|
      t.string :name
      t.string :email
      t.string :streetaddress
      t.string :city
      t.string :postcode

      t.timestamps
    end
  end
end
