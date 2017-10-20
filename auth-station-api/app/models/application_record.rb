class ApplicationRecord < ActiveRecord::Base
  extend ActiveRecordExtension

  self.abstract_class = true
end
