# frozen_string_literal: true

module FlokiForm
  module Fields
    extend ActiveSupport::Autoload

    autoload :Base
    autoload :InlineCheckBox
    autoload :RichTextArea
    autoload :TextField
  end
end
