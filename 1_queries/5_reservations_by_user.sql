-- SELECT properties.*, reservations.*, AVG(property_reviews.rating) as average_rating
-- FROM properties JOIN reservations ON properties.id = property_id
-- JOIN property_reviews ON reservations.id = reservation_id
-- WHERE reservations.end_date < now()::date
-- AND reservations.guest_id = 1
-- GROUP BY reservations.property_id, properties.id, reservations.id
-- ORDER BY reservations.start_date 
-- LIMIT 10;

SELECT properties.*, reservations.*, avg(rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id 
WHERE reservations.guest_id = 1
AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;