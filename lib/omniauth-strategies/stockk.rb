require 'omniauth-oauth2'
module OmniAuth
  module Strategies
    class Stockk < OmniAuth::Strategies::OAuth2
      include OmniAuth::Strategy
      option :client_options, {
               site: "https://id.instockk.com",
               authorize_url: "/oauth/authorize",
               token_url: "/oauth/token"
             }
      def request_phase
        super
      end
      info do
        raw_info.merge("token" => access_token.token)
      end
      uid { raw_info["public_uid"] }
      def raw_info
        @raw_info ||= 
          access_token.get('/api/v1/user').parsed
      end
    end
  end
end