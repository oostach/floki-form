# frozen_string_literal: true

module FlokiForm
  module Fields
    class TextField < Base
      def template_with_wrapper
        template.content_tag(:div, class: wrapper_class) do
          label + template.text_field(object_name, method, options)
        end
      end

      def template_with_no_wrapper
        label + template.text_field(object_name, method, options)
      end

      def label
        return ''.html_safe if without_label?

        template.label(object_name, method, { class: ('required' if required?) })
      end
    end
  end
end
