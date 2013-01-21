class CodeschoolCourse < ActiveRecord::Base
  attr_accessible :description, :image_url, :name, :position
end
