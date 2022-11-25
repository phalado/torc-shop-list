require './Product.rb'

def shop_list(file_path)
  taxes = 0
  total = 0

  File.foreach(file_path) do |line|
    product = Product.new(line)
    taxes += product.taxes
    total += product.total
    product.output
  end
  
  puts "Sales Taxes: #{sprintf('%.2f', taxes)}"
  puts "Total: #{sprintf('%.2f', total)}"
end

shop_list(ARGV[0])
