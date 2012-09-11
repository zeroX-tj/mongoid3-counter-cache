require "mongoid3_counter_cache/version"
module Mongoid3
  module CounterCache
    extend ActiveSupport::Concern

    module ClassMethods
      def counter_cache(options)
        name = options[:name]
        counter_name = options[:field]

        after_create do |document|
          relation = document.send(name)
          if relation
            relation.inc(counter_name.to_sym, 1) if relation.class.fields.keys.include?(counter_name.to_s)
            logger.debug "increased #{counter_name} on #{name}"
          end
        end

        after_destroy do |document|
          relation = document.send(name)
          if relation
            relation.inc(counter_name.to_sym, -1) if relation.class.fields.keys.include?(counter_name.to_s)
            logger.debug "decreased #{counter_name} on #{name}"
          end
        end
      end
    end

  end
end

