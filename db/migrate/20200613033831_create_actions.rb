class CreateActions < ActiveRecord::Migration[6.0]
  def change
    create_table :actions do |t|
      t.string :title
      t.string :details
      t.integer :duration
      t.string :url
      t.string :subject
      t.string :category
      t.string :source


      t.timestamps
    end
  end
end
