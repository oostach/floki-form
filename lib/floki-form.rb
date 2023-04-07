# frozen_string_literal: true

require_relative 'floki_form/version'

module FlokiForm
  extend ActiveSupport::Autoload

  eager_autoload do
    autoload :FormBuilder
    autoload :Fields
  end

  def self.eager_load!
    super
    FlokiForm::Fields.eager_load!
  end
end

require 'floki_form/railtie' if defined?(Rails)
