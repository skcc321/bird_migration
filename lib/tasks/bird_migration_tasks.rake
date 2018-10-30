# desc "Explaining what the task does"
# task :bird_migration do
#   # Task goes here
# end

namespace :birds do
  task migrate: :environment do
    migration_context = ActiveRecord::Base.connection.migration_context

    passed_migration_versions = migration_context.get_all_versions

    pending_migratios = migration_context.migrations.select do |migration|
      passed_migration_versions.exclude?(migration.version)
    end

    begin
      ActiveRecord::Migrator.new(:up, pending_migratios).migrate
    rescue => e

      puts "Oops, something went wrong! Don't worry, all the changes will be reverted!!!"

      pending_migratios.reverse_each do |migration|
        ActiveRecord::Migrator.new(:down, [migration]).migrate
      end

      raise(e)
    end
  end
end
