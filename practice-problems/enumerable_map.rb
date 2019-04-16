
#Reimplement an enumerable method

class Array
    def mapp()
      out = []
      if block_given?
        self.each { |e| out << yield(e) }
      else
        out = to_enum :mapp
      end
        out
    end
end