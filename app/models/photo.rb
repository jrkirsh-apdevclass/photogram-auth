# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  caption    :text
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Photo < ApplicationRecord
    
    has_many :likes
    has_many :comment
    has_many :liked_photos, :through => :likes, :source => :photo
    has_many :fans, :through => :likes, :source => :user



    belongs_to :user
    
end
