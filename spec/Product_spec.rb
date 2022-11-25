require './Product.rb'

RSpec.describe Product do
  let(:cd) { described_class.new('2 music CD at 14.99') }

  describe 'Test instance variables' do
    it { expect(cd.instance_variable_get(:@name)).to eq('music CD') }
    it { expect(cd.instance_variable_get(:@price)).to eq(14.99) }
    it { expect(cd.instance_variable_get(:@quantity)).to eq(2) }
    it { expect(cd.instance_variable_get(:@tax)).to eq(1.5) }
  end

  describe 'Test methods' do
    it 'total' do
      expect(cd.total).to eq(32.98)
    end

    it 'taxes' do
      expect(cd.taxes).to eq(3.0)
    end

    it 'output' do
      expect { cd.output }.to output("2 music CD: 32.98\n").to_stdout
    end
  end

  describe 'Taxes' do
    let(:book) { described_class.new('1 book at 10.00') }
    let(:perfume) { described_class.new('1 perfume at 10.00') }
    let(:imported_chocolate) { described_class.new('1 imported chocolate at 10.00') }
    let(:imported_perfume) { described_class.new('1 imported perfume at 10.00') }

    it 'exempt products should return a 0 tax' do
      expect(book.taxes).to be_zero
    end

    it 'imported exempt products should return a 0.05 rate tax' do
      expect(imported_chocolate.taxes).to eq(0.5)
    end

    it 'non exempt products should return a 0.10 rate tax' do
      expect(perfume.taxes).to eq(1)
    end

    it 'imported non exempt products should add both tax rates' do
      expect(imported_perfume.taxes).to eq(1.5)
    end
  end
end
