class PagePolicy < ApplicationPolicy
  pre_check :allow_admins

  def index?
    true
  end

  def show?
    record.published? || (user.id == record.user_id)
  end

  def new?
    !user.nil?
  end

  def edit?
    user&.id == record.user_id
  end

  def create?
    !user.nil?
  end

  def update?
    user&.id == record.user_id
  end

  def destroy?
    user&.id == record.user_id
  end

  def archive?
    user&.id == record.user_id
  end

  def restore?
    user&.id == record.user_id
  end

  private

  def allow_admins
    allow! if user&.admin?
  end
end
