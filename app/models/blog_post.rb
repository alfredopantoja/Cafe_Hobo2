class BlogPost < ActiveRecord::Base
  attr_accessible :body, :image_url, :title, :user_id
end
