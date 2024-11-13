# Ecommerce Database Project

This is a simple ecommerce database system built using PostgreSQL. It consists of four tables: `customers`, `products`, `orders`, and `order_items`. The project includes SQL queries for analyzing sales data and customer activities.

## Tables

- **customers**: Stores customer information like name, email, and address.
- **products**: Contains product details such as name, description, price, and stock level.
- **orders**: Stores order data including the customer who placed the order and the total amount.
- **order_items**: Stores details of each product in an order, including quantity and price.

## Files

- `schema.sql`: Contains SQL code to create the tables.
- `sample_data.sql`: Sample data insertion queries for populating the tables.
- `queries.sql`: SQL queries written for analysis, including complex queries for sales reports.

## Usage

1. Clone the repository to your local machine.
2. Open the PostgreSQL database client.
3. Run the SQL scripts in the order:
   - First, run `schema.sql` to create the tables.
   - Then, run `sample_data.sql` to insert the sample data.
   - Finally, use `queries.sql` for analysis.

## License

This project is open-source and available under the MIT License.

