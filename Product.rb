class Product
  EXEMPT = ['chocolate', 'book', 'headache', 'pills', 'pill'].freeze

  def initialize(line)
    product = product_work(line)

    @price = product[:price]
    @quantity = product[:qtt]
    @name = product[:name]
    @tax = tax_calc
  end

  def total
    @quantity * (@price + @tax)
  end

  def output
    puts "#{@quantity} #{@name}: #{sprintf('%.2f', self.total)}"
  end

  def taxes
    @tax * @quantity
  end

  private

  def product_work(line)
    product = line.split(' at ').first
    price = line.split(' at ').last.to_f
  
    product_qtt = product.split(' ').first.to_i
    product_name = product.split(' ')
    product_name.shift
    product_name = product_name.join(' ')
  
    { price: price, qtt: product_qtt, name: product_name }
  end
  
  def tax_calc
    tax = 0

    tax += (@price * 0.05).round(2) if @name.include? 'imported'
    tax += (@price * 0.1).round(2) unless EXEMPT.any? { |example| @name.include? example }
    tax += 0.05 - (tax % 0.05).round(2) unless (tax % 0.05).round(2) == 0

    tax
  end
end
