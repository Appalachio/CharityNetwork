class ApplicationController < ActionController::Base
  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  # Ensure user authorization has been performed
  verify_authorized

  # Track which user made each change to a model tracked with PaperTrail
  before_action :set_paper_trail_whodunnit

  # Redirect the user to the homepage if they attempt to perform an unauthorized action
  rescue_from ActionPolicy::Unauthorized do |e|
    # Exception object contains the following information
    # e.policy #=> policy class, e.g. UserPolicy
    # e.rule #=> applied rule, e.g. :show?
    redirect_to root_path, alert: "You are not allowed to perform this action."
  end
end
