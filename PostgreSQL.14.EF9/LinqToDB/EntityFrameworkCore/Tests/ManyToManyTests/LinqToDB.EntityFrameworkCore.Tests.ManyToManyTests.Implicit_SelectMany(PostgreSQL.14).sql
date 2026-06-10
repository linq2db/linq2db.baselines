SELECT s0."Id"
FROM "Students" AS s
INNER JOIN (
    SELECT c."Id", m."StudentsId"
    FROM "MmCourseMmStudent" AS m
    INNER JOIN "Courses" AS c ON m."CoursesId" = c."Id"
) AS s0 ON s."Id" = s0."StudentsId"


-- PostgreSQL.13 PostgreSQL

SELECT
	o."Id"
FROM
	"Students" c_1
		INNER JOIN "MmCourseMmStudent" j ON c_1."Id" = j."StudentsId"
		INNER JOIN "Courses" o ON o."Id" = j."CoursesId"



