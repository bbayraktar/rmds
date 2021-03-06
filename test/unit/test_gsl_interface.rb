#
# RMDS - Ruby Multidimensional Scaling Library
# Copyright (c) Christoph Heindl, 2010
# http://github.com/cheind/rmds
#

require './test/test_helper.rb'
require 'mds/interfaces/gsl_interface'
require 'mds/test/bundles/bundle_matrix_interface.rb'

class TestGSLInterface < Test::Unit::TestCase
  include MDS::Test::BundleMatrixInterface
  
  def setup
    MDS::Backend.push_active(MDS::GSLInterface)
  end
  
  def teardown
    MDS::Backend.pop_active
  end
  
end
