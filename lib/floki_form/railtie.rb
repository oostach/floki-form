# frozen_string_literal: true

require 'rails/railtie'

module FlokiForm
  class Railtie < Rails::Railtie
    config.eager_load_namespaces << FlokiForm

    # config.after_initialize do
    # end
  end
end
