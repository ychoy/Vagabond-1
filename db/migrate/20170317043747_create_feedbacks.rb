class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.string :text
      t.belongs_to :user, foreign_key: true
      t.belongs_to :comment, foreign_key: true

      t.timestamps
    end
  end
end
