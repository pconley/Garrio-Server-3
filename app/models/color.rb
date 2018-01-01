class Color < ApplicationRecord

  has_many :widgets

  validates :name, presence: true

  def to_s
  	"<Color##{id} #{name}>"
  	name
  end
end
