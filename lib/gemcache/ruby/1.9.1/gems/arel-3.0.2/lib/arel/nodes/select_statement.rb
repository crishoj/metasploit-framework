module Arel
  module Nodes
    class SelectStatement < Arel::Nodes::Node
      attr_reader :cores
      attr_accessor :limit, :orders, :lock, :offset, :with

      def initialize cores = [SelectCore.new]
        #puts caller
        @cores          = cores
        @orders         = []
        @limit          = nil
        @lock           = nil
        @offset         = nil
        @with           = nil
      end

      def initialize_copy other
        super
        @cores  = @cores.map { |x| x.clone }
        @orders = @orders.map { |x| x.clone }
      end
    end
  end
end
