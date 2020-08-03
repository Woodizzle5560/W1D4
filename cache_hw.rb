class LRUCache
    def initialize(n)
        @cache = Array.new(n)
    end

    def count
        @cache.count{|el| !el.nil? }
      # returns number of elements currently in cache
    end

    def add(el)
        # adds element to cache according to LRU principle
        if !cache.include?(el)
            cache.shift  
            cache << el
        else
            cache.delete(el)
            cache << el
        end
    end

    def show
        print cache
      # shows the items in the cache, with the LRU item first
    end

    private
    attr_accessor :cache
    # helper methods go here!

  end