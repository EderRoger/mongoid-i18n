require 'rails'

module MongoidI18nRails
  class Railtie < ::Rails::Railtie #:nodoc:
    initializer 'mongoid-i18n-rails' do |app|
      add("rails/locale/mongoid-en.yml")
      add("rails/locale/mongoid-pt-BR.yml")
    end

    protected
    def self.add(pattern)
      files = Dir[File.join(File.dirname(__FILE__), '../..', pattern)]
      I18n.load_path.concat(files)
    end
  end
end
