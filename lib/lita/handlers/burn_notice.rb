require 'net/http'
require 'uri'
require 'json'
require 'pry'

module Lita
  module Handlers
    class BurnNotice < Handler
      route(/\bburn me\b/, :burn, command: true, help: {
        'echo TEXT' => 'Replies back with TEXT.'
      })

      def burn(response)
        response.reply burn_vo
      end

      private
      def uri
        URI.parse("https://www.kimonolabs.com/api/330o1ds8?apikey=#{ENV['BURN_NOTICE_API_KEY']}")
      end

      def api_call
        Net::HTTP.get_response(uri)
      end

      def api_body
        JSON.parse api_call.body
      end

      def burn_vo
        vo = api_body["results"]["collection1"].sample
        vo["burn-notice-voice-over"]["text"]
      end
    end

    Lita.register_handler(BurnNotice)
  end
end
