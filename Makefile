RUN := ruby shop_list.rb

input1:
	$(RUN) inputs/input_1

input2:
	$(RUN) inputs/input_2

input3:
	$(RUN) inputs/input_3

rspec:
	rspec spec/shop_list_spec.rb && rspec spec/Product_spec.rb