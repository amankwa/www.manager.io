module Jekyll
  module Algolia
    module Hooks
      def self.before_indexing_each(record, node, context)
        # Add my name as an author to each record
        record[:html] = nil

        record
      end
    end
  end
end

module Jekyll
  module Algolia
    module Hooks
      def self.should_be_excluded?(filepath)
        # Include only guides
        return false if filepath =~ %r{guides}
        true
      end
    end
  end
end