class Teacher < ApplicationRecord

has_one :subject,:dependent => :destroy
validates :name, :phonenumber, presence: true

end
