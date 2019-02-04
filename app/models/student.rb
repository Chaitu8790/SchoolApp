class Student < ApplicationRecord

# has_many :class_rooms
# belongs_to :class_room
has_many :records ,:dependent => :destroy
validates_uniqueness_of :studentcode
validates :name, presence: true

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  # validates_attachment_size :avatar, :less_than => 2.megabytes, 
   # :unless => Proc.new {|model| model.avatar }
  validates_attachment :avatar, presence: true,size: { in: 0..2.megabytes }


end
