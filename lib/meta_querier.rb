# Author::    Sergio Espeja
# Copyright:: Copyright (c) 2007 Sergio Espeja
# License::   GPL License
# More Information:: http://meta-rails.rubyforge.org

# MetaQuerier libs
require "meta_querier/sqldsl-1.4.2/sqldsl"
require "meta_querier/rails_application_visualizer"
require "meta_querier/meta_query"
#require "meta_querier/meta_querier_base_controller"

# Load models
require File.dirname(__FILE__) + "/../app/models/meta_querier_query"
require File.dirname(__FILE__) + "/../app/models/meta_querier_query_condition"

# Check if MetaQuerier model tables exist in the DB
META_QUERIER_TABLES = MetaQuerierQuery.table_exists? && MetaQuerierQueryCondition.table_exists?

MODIFY_QUERY_C = "meta_querier_modify_query"

META_QUERIER_HOOK_FILE = "#{RAILS_ROOT}/lib/meta_querier_hook.rb"
