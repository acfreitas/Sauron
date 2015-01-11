node.set['platform'] = 'ubuntu'

# Install and config PostgreSQL
# @see https://github.com/hw-cookbooks/postgresql
node.set['postgresql'] = {
  version: '9.3',
  contrib: {
    packages: 'postgresql-contrib-9.3'
  },
  password: {
    postgres: ''
  },
  pg_hba: [
    {
      type: 'local',
      db: 'all',
      user: 'postgres',
      method: 'trust'
    }
  ]
}

include_recipe 'postgresql::server'