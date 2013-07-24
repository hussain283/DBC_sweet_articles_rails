#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

SweetArticlesRails::Application.load_tasks

namespace :db do
  desc "Migrate Legacy Data"
  task :import_legacy_data => :environment do

    %x(psql -d sa_dev -f db_dump.sql)

    ActiveRecord::Base.connection.execute("ALTER TABLE articles RENAME TO old_articles")
    ActiveRecord::Base.connection.execute("ALTER TABLE articles_id_seq RENAME TO old_articles_id_seq")

    %x(rake db:migrate)    

    legacy_data = ActiveRecord::Base.connection.execute("SELECT * FROM old_articles")

    legacy_data.each do |attributes|
      category = Category.find_or_create_by_name(attributes['category'])

      article = category.articles.create(title: attributes['title'],
                                         description: attributes['description'],
                                         url: attributes['url'])
      attributes['tags'].split(',').each do |tag|
        article.tags << Tag.find_or_create_by_name(tag.strip)
      end

    end

  end
end
