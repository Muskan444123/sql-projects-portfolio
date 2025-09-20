# E-commerce Sales Analytics

## Overview
Database to manage customers, products, and orders, with queries for sales analysis and business insights.

## Database Schema
- Customers(CustomerID, FirstName, LastName, Email, City)
- Products(ProductID, ProductName, Category, Price)
- Orders(OrderID, CustomerID, OrderDate, TotalAmount)
- OrderDetails(OrderDetailID, OrderID, ProductID, Quantity, SubTotal)

## Setup
1. Run `schema.sql` to create tables.
2. Run `queries.sql` to insert sample data and run analytics queries.

## Sample Queries
- List all orders with customer details.
- Top-selling products and monthly revenue analysis.