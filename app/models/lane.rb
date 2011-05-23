class Lane < ActiveRecord::Base
  has_many :cards
  has_one :next_lane, :class_name => "Lane", :foreign_key => "previous_lane_id"
  belongs_to :previous_lane, :class_name => "Lane"

  def self.open
    Lane.where(:name => "Open").first
  end
end
