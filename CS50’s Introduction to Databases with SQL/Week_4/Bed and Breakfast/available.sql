CREATE VIEW "available" AS
SELECT listings.id, property_type, host_name, availabilities.date FROM listings
JOIN availabilities ON availabilities.listing_id = listings.id
WHERE available = "TRUE";
