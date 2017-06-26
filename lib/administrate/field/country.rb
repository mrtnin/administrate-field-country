require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Country < Administrate::Field::Base
      class Engine < ::Rails::Engine; end

      def to_s
        data
      end

      def priority_countries
        options.fetch(:priority_countries, %w(US IT GB))
      end

      def include_blank?
        options.fetch(:include_blank, true)
      end
    end
  end
end
