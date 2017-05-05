class ApplicationRecord < ActiveRecord::Base
  include SimpleSample
  self.abstract_class = true
end
