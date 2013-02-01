class CodeschoolCourse < ActiveRecord::Base
  attr_accessible :description, :image_url, :name, :position

  default_scope order: 'codeschool_courses.position ASC'
end
