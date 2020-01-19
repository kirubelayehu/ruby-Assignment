# Specialty Foods Marketplace

### Core Functionality
- [x] Product Class: name, cost, origin (has many reviews)
- [x] Review Class: author, content, rating (belongs to product)
- [x] Seed database with 50 products and 250 reviews
- [x] Nav bar - home, products
- [x] Home page (root) - basic info, 3 most recently added products, product with the most reviews
- [x] Products page - all products
- [x] Individual product page - details, update, delete, all reviews, add new review
- [x] CRUD for reviews within product detail page
- [x] Scopes:
  - [x] Product with most reviews
  - [x] 3 most recently added products
  - [x] All products made in the US
- [x] Validations:
  - [x] All fields must be filled in
  - [x] Rating can only be a number between 1-5
  - [x] Review content must be between 50-250 characters
- [x] Custom styling
- [x] Unit tests
- [ ] Integration tests
- [x] Success and error flash messages
- [x] README

### Further Exploration
- [ ] Deploy to Heroku
- [ ] Pagination - 10 products at a time
- [ ] Group products by country of choice
- [ ] "Featured products" boolean
- [ ] Show average rating for each product
- [ ] Scope for products with highest ratings
- [ ] Stars instead of numbers for ratings
- [ ] Add images for products
- [ ] User authentication
- [ ] Search bar
