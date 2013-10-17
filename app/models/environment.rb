class Environment < ActiveRecord::Base
  has_many :servers
  attr_accessible :description, :integrated, :name
  validates :name, :description, presence: true
  validates :name, uniqueness: true
  before_destroy :ensure_not_referenced_by_any_server

  private
  def ensure_not_referenced_by_any_server
    if servers.empty?
      return true
    else
      errors.add(:base, "There are still servers that belong to the #{self.name} environment!")
      return false
    end
  end
end
