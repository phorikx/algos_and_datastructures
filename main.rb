# frozen_string_literal: true

Dir["#{File.dirname(__FILE__)}/lib/**/*.rb"].sort.each do |file|
  require file
end

puts Sorting::Insertion.insertion_sort([3, 2, 1])
