# frozen_string_literal: true

module FlokiForm
  module Fields
    class RichTextArea < Base
      RICHTEXT_WRAPPER_CLASSES = %w[form-richtext].freeze

      def skip_default_input_class?
        true
      end

      def error?
        object.errors.key?(method)
      end

      def rich_text_field
        template.content_tag(:div, class: RICHTEXT_WRAPPER_CLASSES) do
          template.rich_text_area(object_name, method, options)
        end
      end

      def wrapper_with_errors(content)
        template.content_tag :div, class: 'field-with-errors' do
          content +
            template.content_tag(:span, object.errors.full_messages_for(method).join(', '), class: 'field-errors')
        end
      end

      def render_with_error
        error? ? wrapper_with_errors(rich_text_field) : rich_text_field
      end

      def template_with_wrapper
        template.content_tag(:div, class: wrapper_class) do
          template.label(object_name, method, { class: ('required' if required?) }) +
            render_with_error
        end
      end

      def template_with_no_wrapper; end
    end
  end
end
