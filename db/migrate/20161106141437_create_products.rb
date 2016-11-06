class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.stringdescription :name
      t.string :text
      t.string :image_url

      t.timestamps
    end
  end
end
