require 'active_support/concern'
require 'yaml'

module Contentable
  extend ActiveSupport::Concern
  included do
    attr_accessor :slug

    def self.create(attributes)
      contentable = self.new
      contentable.set_attributes(attributes)
      return contentable
    end

    def self.load
      filename = "#{self.to_s.pluralize.downcase}.yml"
      data = YAML.load_file Rails.root.join('app', 'assets', 'content', filename)
      objects = {}
      data.each do |key, values|
        case values
        when Array
          objects[key.to_sym] = []
          values.each do |value|
            objects[key.to_sym] << self.create(value)
          end
        else
          objects[key.to_sym] = self.create(values)
        end
      end
      return objects
    end

    def self.find_all
      self.load
    end

    def self.find(slug)
      candidates = self.find_all
      case candidates
      when Hash
        return candidates[slug]
      when Array
        self.find_all.each do |candidate|
          return candidate if candidate.slug == slug
        end
      else
        # intentionally do nothing
        Rails.logger.warn("We do not know how to find [#{slug}] for [#{self.class}]")
      end
      return nil
    end

    def set_attributes(attributes)
      attributes.each do |attribute, value|
        send("#{attribute}=", value)
      end
    end
  end
end
