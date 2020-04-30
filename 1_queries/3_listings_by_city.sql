-- SELECT id, title, cost_per_night, AVG(rating) as average_rating
-- FROM properties JOIN property_reviews ON property_id = properties.id
-- WHERE properties.city = 'Vancouver'
-- AND average_rating >= 4
-- GROUP BY property_id
-- ORDER BY cost_per_night LIMIT 10;

SELECT properties.*, avg(property_reviews.rating) as average_rating
FROM properties
JOIN property_reviews ON properties.id = property_id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;