require "active_record/connection_adapters/postgresql_adapter.rb"

# Set the default timestamp column type to timestamp with zone to follow Postgresql best practices
# https://wiki.postgresql.org/wiki/Don't_Do_This#Don.27t_use_timestamp_.28without_time_zone.29
ActiveRecord::ConnectionAdapters::PostgreSQLAdapter.datetime_type = :timestamptz
