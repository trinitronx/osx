# frozen_string_literal: true

unified_mode true if Chef::const_defined?(:VERSION) && Chef::VersionConstraint.new(">= 17.0").include?(Chef::VERSION.to_s)

actions :set

attribute :name,  :kind_of => String, :name_attribute => true
attribute :value, :kind_of => String

def initialize(name, run_context=nil)
  super
  @action = :set
end
