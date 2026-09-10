# Adds a soft delete and restore option to models
# The model must have the "archived_at" datetime database column
module Archivable
  extend ActiveSupport::Concern

  included do
    scope :active, -> { where(archived_at: nil) }
    scope :archived, -> { where.not(archived_at: nil) }
  end

  def archive
    update_attribute(:archived_at, Time.current)
  end

  def restore
    update_attribute(:archived_at, nil)
  end

  def archived?
    not self.archived_at.nil?
  end

  def active?
    self.archived_at.nil?
  end
end
