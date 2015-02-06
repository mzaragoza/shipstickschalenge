# Ship Sticks Chalenge

https://shipstickschalenge.herokuapp.com

# List all Products (GET)
https://shipstickschalenge.herokuapp.com/api/v1/products/

# List One Products (GET)
https://shipstickschalenge.herokuapp.com/api/v1/products/:id

# List Best Products (GET)
https://shipstickschalenge.herokuapp.com/api/v1/products/?search=48x14x12


# Add Product (POST)
https://shipstickschalenge.herokuapp.com/api/v1/products/
parameters: 
 - product[height] (int)
 - product[length] (int)
 - product[name] (str) *
 - product[type] (str) *
 - product[weight] (int)
 - product[width] (int)
\* required

# Update Product (PATCH)
https://shipstickschalenge.herokuapp.com/api/v1/products/:id
parameters: 
 - product[height] (int)
 - product[length] (int)
 - product[name] (str)
 - product[type] (str)
 - product[weight] (int)
 - product[width] (int)
\* note only parameters that are pass are going to be updated 

# Delete Product (DELETE)
https://shipstickschalenge.herokuapp.com/api/v1/products/:id


