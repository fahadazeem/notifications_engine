class AddDeletedAtToNotificationEngineNotifications < ActiveRecord::Migration[7.0]
  def change
    add_column :notification_engine_notifications, :deleted_at, :datetime
    add_index :notification_engine_notifications, :deleted_at
  end
end
