require 'digest/sha1'

class User < ActiveRecord::Base
  attr_accessible :password, :username, :hashed_password

  validates :username, :password, :hashed_password, :presence => true
  validates :username, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :on => :create }
end