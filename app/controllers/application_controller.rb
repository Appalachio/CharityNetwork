class ApplicationController < ActionController::Base
  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  # Track which user made each change to a model tracked with PaperTrail
  before_action :set_paper_trail_whodunnit
end
