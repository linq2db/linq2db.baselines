SELECT s."Id", s."Name", t."CoursesId", t."StudentsId", t."Id", t."Title"
FROM "Students" AS s
LEFT JOIN (
    SELECT m."CoursesId", m."StudentsId", c."Id", c."Title"
    FROM "MmCourseMmStudent" AS m
    INNER JOIN "Courses" AS c ON m."CoursesId" = c."Id"
) AS t ON s."Id" = t."StudentsId"
ORDER BY s."Id", t."CoursesId", t."StudentsId"




-- PostgreSQL.18 PostgreSQL

SELECT
	m_1."Id",
	o."Id",
	o."Title"
FROM
	"Students" m_1
		INNER JOIN "MmCourseMmStudent" d ON m_1."Id" = d."StudentsId"
		INNER JOIN "Courses" o ON o."Id" = d."CoursesId"
ORDER BY
	m_1."Id"





-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"Students" t1
ORDER BY
	t1."Id"



