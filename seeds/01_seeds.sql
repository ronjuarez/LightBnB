INSERT INTO users ( name, email, password) 
VALUES ('JOE SHMOE', 'joeyshmoey@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
  ('RICK SANCHEZ', 'picklerich@plumbus.org', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
  ('ABED NADIR', 'imbatman@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');


INSERT INTO properties (owner_id, description, title, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bedrooms, number_of_bathrooms, country, street, city, province, post_code, is_active)
VALUES (1, 'description', 'SHMOESVILLE', 'photo.url/photo.jpg', 'coverphoto.url/photo.jpg', 8000, 2, 5, 1, 'CANADA', '2525 SHMOE BLVD', 'TORONTO', 'ONTARIO', 'M8L1Y6', true),
  (2, 'description', 'GARAGE SCIENCE LAB', 'photo2.url/photo.jpg', 'coverphoto2.url/photo.jpg', 9000, 6, 1, 2, 'CANADA', '1114 PINEVALLEY DR', 'TORONTO', 'ONTARIO', 'L6A5R4', true),
  (3, 'description', 'GAZORPAZORP', 'photo3.url/photo.jpg','coverphoto3.url/photo.jpg', 10000, 0, 7, 3, 'CANADA', '123 FAKE ST', 'TORONTO', 'ONTARIO', 'N7T1A5', true);


INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
VALUES (1, 1, '2018-09-11', '2018-09-26'),
  (2, 2, '2019-01-04', '2019-02-01'),
  (3, 3, '2021-10-01', '2021-10-14');


INSERT INTO property_reviews (property_id, guest_id, reservation_id, rating, message)
VALUES (1, 1, 1, 10, 'message'),
  (2, 2, 2, 10, 'message'),
  (3, 3, 3, 10, 'message');