# Design Document

By Yeasin Arafat

Video overview: (https://www.youtube.com/watch?v=crFoJxoyim4)

## Scope

The scope of this project includes defining entities such as Users, Products, Orders, Sellers, and Reviews. It also involves establishing relationships between these entities to capture the interactions within the marketplace.

## Functional Requirements

Users should be able to register, browse products, make purchases, leave reviews, list products for sale, and manage their inventory.
Advanced features like recommendation systems, personalized product suggestions, and real-time chat support are beyond the scope of our database.

## Representation

Entities: Users, Products, Orders, Sellers, and Reviews.
Attributes: Each entity has specific attributes related to its purpose within the marketplace.
Types and Constraints: Chosen data types and constraints ensure data integrity and efficient storage, promoting usability and performance.

### Entities

Users: Represents individuals who interact with the marketplace. Attributes include user_id, username, email, password_hash, etc.
Products: Represents items available for sale in the marketplace. Attributes include product_id, name, description, price, quantity_available, etc.
Orders: Represents individual transactions where users purchase products. Attributes include order_id, user_id (buyer), product_id, quantity, total_price, etc.
Sellers: Represents individuals or businesses selling products in the marketplace. Attributes include seller_id, seller_name, contact_info, etc.
Reviews: Represents feedback provided by users on products they have purchased. Attributes include review_id, product_id, user_id (reviewer), rating, comment, etc.

### Relationships

Users - Orders: One-to-Many relationship, as one user can place multiple orders.
Products - Orders: Many-to-Many relationship, as multiple products can be included in one order, and one product can be part of multiple orders.
Users - Reviews: One-to-Many relationship, as one user can write multiple reviews, but each review is associated with only one user.
Products - Reviews: One-to-Many relationship, as one product can have multiple reviews, but each review is associated with only one product.
Sellers - Products: One-to-Many relationship, as one seller can list multiple products for sale.

## Optimizations

Indexing: Utilize indexing on frequently queried columns like user_id, product_id, etc., to improve query performance.
Normalization: Apply normalization techniques to reduce data redundancy and improve data integrity.
Caching: Implement caching mechanisms to store frequently accessed data and reduce database load.
Denormalization (if necessary): Denormalize data where performance gains outweigh the drawbacks to optimize specific queries.

## Limitations

Scalability: The database design should be scalable to accommodate a growing number of users, products, and transactions.
Security: Implement robust security measures to protect user data, prevent unauthorized access, and mitigate potential security threats.
Performance: Continuously monitor and optimize database performance to ensure fast response times, especially during peak usage periods.
