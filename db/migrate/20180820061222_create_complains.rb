class CreateComplains < ActiveRecord::Migration[5.2]
  def change
    create_table :complains do |t|
      t.string :name
      t.string :title
      t.text :text

     
      t.timestamps
    end
  end
end
