class CreateUserActions < ActiveRecord::Migration[6.0]
  def change
    create_table :user_actions do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :action, null: false, foreign_key: true
      t.date :date_completed
      t.integer :duration
      t.string :comment

      t.timestamps
    end
  end
end
