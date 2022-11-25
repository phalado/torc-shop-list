require './shop_list.rb'

RSpec.describe "shop_list" do
  let(:input1) { './inputs/input_1' }
  let(:input2) { './inputs/input_2' }
  let(:input3) { './inputs/input_3' }
  
  context 'input 1' do
    let(:expected_output) { "2 book: 24.98\n1 music CD: 16.49\n1 chocolate bar: 0.85\nSales Taxes: 1.50\nTotal: 42.32\n" }

    it 'Return expected output ' do
      expect { shop_list(input1) }.to output(expected_output).to_stdout
    end
  end

  context 'input 2' do
    let(:expected_output) { "1 imported box of chocolates: 10.50\n1 imported bottle of perfume: 54.65\nSales Taxes: 7.65\nTotal: 65.15\n" }

    it 'Return expected output ' do
      expect { shop_list(input2) }.to output(expected_output).to_stdout
    end
  end

  context 'input 3' do
    let(:expected_output) { "1 imported bottle of perfume: 32.19\n1 bottle of perfume: 20.89\n1 packet of headache pills: 9.75\n3 imported boxes of chocolates: 35.55\nSales Taxes: 7.90\nTotal: 98.38\n" }

    it 'Return expected output ' do
      expect { shop_list(input3) }.to output(expected_output).to_stdout
    end
  end
end