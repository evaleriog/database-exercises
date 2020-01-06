use adlister;

SELECT email, title
FROM users as u
         JOIN ads as a on u.id = a.user_id
WHERE a.id = 5;

SELECT title as 'Ad', name as 'Category'
FROM ad_category as ac
         JOIN ads on ac.ad_id = ads.id
         JOIN categories as c on ac.category_id = c.id
WHERE ads.id = 5
GROUP BY title, name;

SELECT title as 'Ad', name as 'Category'
FROM ad_category as ac
         JOIN ads as a on ac.ad_id = a.id
         JOIN categories as c on ac.category_id = c.id
WHERE category_id = 5;

SELECT title AS 'Ad', username as 'User'
FROM ads as a
         JOIN users u on a.user_id = u.id
WHERE u.id = 5;