SELECT c."Id"
FROM "Courses" AS c
WHERE EXISTS (
    SELECT 1
    FROM "MmCourseMmStudent" AS m
    INNER JOIN "Students" AS s ON m."StudentsId" = s."Id"
    WHERE c."Id" = m."CoursesId" AND s."Name" = 'Alice')
ORDER BY c."Id"


-- PostgreSQL.18 PostgreSQL

SELECT
	c_1."Id"
FROM
	"Courses" c_1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"MmCourseMmStudent" s
				INNER JOIN "Students" o ON o."Id" = s."StudentsId"
		WHERE
			c_1."Id" = s."CoursesId" AND o."Name" = 'Alice'
	)
ORDER BY
	c_1."Id"



