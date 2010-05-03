require 'activesupport'

class OEmbed
  module Formatters
    class JSON
      
      def name
        "json"
      end

      def format(txt)
        ActiveSupport::JSON.decode(txt)
      end
      
    end
  end
end
OEmbed.register_formatter(OEmbed::Formatters::JSON)
