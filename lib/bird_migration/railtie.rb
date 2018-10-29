module BirdMigration
  class Railtie < ::Rails::Railtie
    rake_tasks do
      load 'tasks/bird_migration_tasks.rake'
    end
  end
end
