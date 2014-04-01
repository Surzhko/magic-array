require 'magic-array/class_methods'
require 'magic-array/version'

module Magic
  module Array
    Object.class_eval do
      include ClassMethods
    end
  end
end
