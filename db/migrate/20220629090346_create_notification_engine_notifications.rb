class CreateNotificationEngineNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notification_engine_notifications do |t|
      t.string :title
      t.string :content
      t.integer :importance
      t.datetime :day
      t.string :tag
      t.integer :user_id

      t.timestamps
    end
  end
end
