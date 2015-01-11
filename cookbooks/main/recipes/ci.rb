node.set['platform'] = 'ubuntu'

# @see https://github.com/opscode-cookbooks/jenkins
include_recipe 'jenkins::_master_package'