class Order < ApplicationRecord

  include DealHelper
  delegate :opened?, :closed?, to: :position, allow_nil: true

  has_many :logs, class_name: "AuditLog", as: :source

  belongs_to :pair
  belongs_to :source, optional: true
  belongs_to :position, optional: true

  validates :pair_id, presence: true
  validates :direction, presence: true
  validates :size, presence: true
  validates :entry, presence: true

  def ig_place_order
    IgPlaceOrderJob.perform_later(id)
  end

  def ig_remove_order
    IgRemoveOrderJob.perform_later(id)
  end

  def expired?
    expired_at < Time.now
  end

end
