# Adds a publish/unpublish option to models
# The model must have the "published_at" datetime database column
module Publishable
  extend ActiveSupport::Concern

  included do
    scope :published, -> { where("published_at <= ?", Time.current) }
    scope :unpublished, -> { where("published_at > ? OR published_at IS NULL", Time.current) }
  end

  def publish_now
    update_attribute(:published_at, Time.current)
  end

  def publish(publish_time)
    update_attribute(:published_at, publish_time)
  end

  def unpublish
    update_attribute(:published_at, nil)
  end

  def published?
    self.published_at <= Time.current
  end

  def unpublished?
    self.published_at.nil? or self.published_at > Time.current
  end
end
