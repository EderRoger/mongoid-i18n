require 'rails'

module MongoidI18nRails
  class Railtie < ::Rails::Railtie #:nodoc:
    initializer 'mongoid-i18n-rails' do |app|
      ["rails/locale/mongoid-en.yml", "rails/locale/mongoid-pt-BR.yml"].each do |pattern|
        files = Dir[File.join(File.dirname(__FILE__), '../..', pattern)]
        I18n.load_path.concat(files)
      end
    end
  end
end
