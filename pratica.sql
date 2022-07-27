 1 - SELECT users.id, users.name, cities.name AS city FROM users JOIN cities
ON cities.id = users."cityId" WHERE cities.name = 'Rio de Janeiro';
 
 2 - SELECT testimonials.id, users.name AS writer, u.name AS recipient, testimonials.message  FROM testimonials JOIN users ON testimonials."writerId" = users.id JOIN users u ON testimonials."recipientId" = u.id; (ok)
 
 3 - SELECT users.id, users.name, courses.name AS course, 
schools.name AS school, educations."endDate" AS "endDate"
FROM educations JOIN courses ON educations."courseId" = courses.id
JOIN users ON users.id = educations."userId"
JOIN schools ON educations."schoolId" = schools.id 
WHERE educations."status" = 'finished' AND users.id = 30;
 
 4 - SELECT users.id, users.name, roles.name AS role,
companies.name AS company, experiences."startDate"
FROM experiences JOIN users ON experiences."userId" = users.id
JOIN roles ON experiences."roleId" = roles.id
JOIN companies ON experiences."companyId" = companies.id
WHERE users.id = 50 AND experiences."endDate" IS NULL;
	

Bônus
SELECT s.id AS id, s.name AS school, c.name AS course, co.name AS company, r.name AS role
FROM educations e
JOIN schools s ON e."schoolId" = s.id
JOIN courses c ON e."courseId" = c.id
JOIN users u ON e."userId" = u.id
JOIN applicants a ON a."userId" = u.id
JOIN jobs j ON a."jobId" = j.id
JOIN companies co ON j."companyId" = co.id
JOIN roles r ON j."roleId" = r.id
WHERE co.id = 10
AND r.name = 'Software Engineer'
AND j.active = true;

