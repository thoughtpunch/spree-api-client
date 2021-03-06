require 'faraday_middleware'
require "spree-api-client/version"

require 'spree-api-client/connection'
require 'spree-api-client/request'

require 'spree-api-client/users'
require 'spree-api-client/checkouts'
require 'spree-api-client/credit_cards'
require 'spree-api-client/adjustments'
require 'spree-api-client/products'
require 'spree-api-client/variants'
require 'spree-api-client/orders'
require 'spree-api-client/addresses'
require 'spree-api-client/countries'
require 'spree-api-client/zones'
require 'spree-api-client/properties'
require 'spree-api-client/line_items'
require 'spree-api-client/return_authorizations'
require 'spree-api-client/taxons'
require 'spree-api-client/payments'
require 'spree-api-client/promotions'

module Spree
  module API
    class Client
      include Spree::API::Client::Connection
      include Spree::API::Client::Request

      include Spree::API::Client::Users
      include Spree::API::Client::Checkouts
      include Spree::API::Client::Products
      include Spree::API::Client::Variants
      include Spree::API::Client::Orders
      include Spree::API::Client::Addresses
      include Spree::API::Client::Countries
      include Spree::API::Client::Zones
      include Spree::API::Client::Properties
      include Spree::API::Client::LineItems
      include Spree::API::Client::ReturnAuthorizations
      include Spree::API::Client::Taxons
      include Spree::API::Client::Payments
      include Spree::API::Client::CreditCards
      include Spree::API::Client::Adjustments
      include Spree::API::Client::Promotions

      attr_accessor :api_endpoint, :api_token, :per_page, :locale
      def initialize(api_endpoint, api_token, locale="en-US", options={})
        @api_endpoint = api_endpoint
        @api_token = api_token
        @locale = locale
        @per_page = options.fetch(:per_page, 30)
      end
    end
  end
end
