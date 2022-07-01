# frozen_string_literal: true

module NotificationEngine
  class NotificationsController < ApplicationController
    before_action :set_notification, only: %i[show edit update destroy]
    before_action :set_importance_param, only: %i[create update]
    before_action :set_notification_by_tag, only: %i[create]

    load_and_authorize_resource

    def index
      @notifications = current_user.has_role?(:admin) ? Notification.all : current_user.notifications
    end

    def show
      @user = @notification.user
    end

    def new
      @users = User.all
      @notification = Notification.new
    end

    def edit
      @users = User.all
    end

    def create
      respond_to do |format|
        if @notification.present?
          update_notification(format)
        else
          @notification = Notification.new(notification_params)
          if @notification.save
            format.html { redirect_to @notification, notice: 'Notification was successfully created.' }
            format.json { render :show, status: :created, location: @notification }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @notification.errors, status: :unprocessable_entity }
          end
        end
      end
    end

    def update
      respond_to do |format|
        params[:notification][:user_ids] ||= []
        update_notification(format)
      end
    end

    def destroy
      @notification.destroy
      respond_to do |format|
        format.html { redirect_to notifications_url, notice: 'Notification was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    def destroy_multiple
      Notification.destroy(params[:notification_ids])
      respond_to do |format|
        format.html { redirect_to notifications_url, notice: 'Notifications was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    def update_notification(format)
      if @notification.update(notification_params)
        format.html { redirect_to @notification, notice: 'Notification was successfully updated.' }
        format.json { render :show, status: :ok, location: @notification }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @notification.errors, status: :unprocessable_entity }
      end
    end

    def set_importance_param
      params['notification']['importance'] = notification_params['importance'].to_i
    end

    def set_notification
      @notification = Notification.find(params[:id])
    end

    def set_notification_by_tag
      @notification = Notification.find_by_tag(params[:notification][:tag])
    end

    def notification_params
      params.require(:notification).permit(:title, :content, :importance, :day, :tag, :user_id)
    end
  end
end
