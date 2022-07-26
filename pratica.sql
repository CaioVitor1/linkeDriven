 1 - SELECT users.id, users.name, cities.name AS city FROM users JOIN cities ON cities.name = 'Rio de Janeiro';
 
 2 - SELECT testimonials.id, users.name AS writer, u.name AS recipient, testimonials.message  FROM testimonials JOIN users ON testimonials."writerId" = users.id JOIN users u ON testimonials."recipientId" = u.id;
 
 3 - SELECT users.id, users.name, courses.name AS course, schools.name AS school, educations."endDate" FROM users JOIN educations ON users.id = 30 AND educations.status = 'finished' JOIN schools ON educations."schoolId" = schools.id JOIN courses ON courses.id = educations."courseId";
 
 4 - SELECT USERS.ID AS ID, USERS.NAME, EXPERIENCES."startDate", ROLES.NAME AS ROLE FROM EXPERIENCES JOIN USERS ON EXPERIENCES."userId" = USERS.ID JOIN ROLES ON EXPERIENCES."roleId" = ROLES.ID WHERE experiences."userId" = 50 AND experiences."endDate" IS NULL;
		
