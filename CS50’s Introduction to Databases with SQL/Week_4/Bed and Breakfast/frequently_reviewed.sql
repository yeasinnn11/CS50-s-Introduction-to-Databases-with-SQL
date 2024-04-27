CREATE VIEW "frequently_reviewed" AS
SELECT listings.id, property_type, host_name FROM listings
JOIN reviews ON reviews.listing_id = listings.id
GROUP BY listings.id
ORDER BY COUNT(listing_id) DESC, property_type, host_name
LIMIT 100;
