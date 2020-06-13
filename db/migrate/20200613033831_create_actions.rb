class CreateActions < ActiveRecord::Migration[6.0]
  def change
    create_table :actions do |t|
      t.string :title
      t.integer :duration
      t.string :url
      t.string :subject

      t.timestamps
    end
  end
end
