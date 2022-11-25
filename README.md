# Torc take home - Shop List

This ruby application is a take-home request from Torc.

The objective is to output the equivalent of a receipt listing the name of all the items and their price (including tax), finishing with the total cost of the items, and the total amounts of sales taxes paid.



## How it works

The application reads a file line-by-line.

It separates the first argument into the product's quantity, the second (ending in the "at") into the name, and the final argument into the price.

After that, it does all the tax validations and math outputting the quantity, name, and total price paid, after taxes.

After all the lines were read, the application outputs the total taxes and the total price.

It's important to observe that the `exempt list` present in the `Product class` is based on the sample inputs given on the assessment's page.

``'chocolate', 'book', 'headache', 'pills', 'pill'``



## How to run it

Simply enought, just run

`ruby shop_list 'input-path'`

being `input-path` the path to the input.

You can also run the inputs in the `inputs` folder using the Makefile's shortcuts:

`make input1`

`make input2`

`make input3`


## Input format

The input format is really important.
It should be on product per line, being the line:

`product-quantity` `product-name` at `product-price`

Any `imported` product should have the word imported in the name.



## Automated tests

I used [RSpec](https://rspec.info/) to test the application. You can run it by using the shortcut

`make rspec`



## Technologies used:

- Ruby
- RSpec
- Makefile
