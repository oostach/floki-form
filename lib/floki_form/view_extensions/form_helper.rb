# frozen_string_literal: true

module FlokiForm
  module ViewExtensions
    module FormHelper
      def floki_form_for(name, *args, &)
        options = args.extract_options!
        args << options.merge(builder: FlokiForm::FormBuilder)
        form_for(name, *args, &)
      end

      def floki_form_with(model: nil, scope: nil, url: nil, format: nil, **options, &)
        options = options.reverse_merge(builder: FlokiForm::FormBuilder)
        form_with(model:, scope:, url:, format:, **options, &)
      end
    end
  end
end

ActiveSupport.on_load(:action_view) do
  include FlokiForm::ViewExtensions::FormHelper
end
