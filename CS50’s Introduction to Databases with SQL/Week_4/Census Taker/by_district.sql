CREATE VIEW "by_district" AS
SELECT district, SUM(families) AS families, SUM(households), SUM(population), SUM(male), SUM(female) FROM "census"
GROUP BY district;


