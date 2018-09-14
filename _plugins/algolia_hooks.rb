module Jekyll
  module Algolia
    module Hooks
      def self.before_indexing_each(record, node, context)
        record[:url] = "/guides/#{record[:id]}"
        record.delete(:html)
        record.delete(:categories)
        record.delete(:tags)
        record.delete(:custom_ranking)
        record.delete(:headings)
        record.delete(:title)
        record.delete(:slug)
        record.delete(:excerpt_html)
        record.delete(:excerpt_text)
        record.delete(:id)
        record.delete(:type)
        record.delete(:highlight)
        record
      end
    end
  end
end

module Jekyll
  module Algolia
    module Hooks
      def self.should_be_excluded?(filepath)
        return false if filepath =~ %r{guides}
        true
      end
    end
  end
end