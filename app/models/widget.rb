class Widget < ApplicationRecord

  belongs_to :color 

  validates :name, presence: true

  def to_s
  	c = color ? color.name : "none"
  	"<Widget##{id} #{name} #{c} >"
  end
end
