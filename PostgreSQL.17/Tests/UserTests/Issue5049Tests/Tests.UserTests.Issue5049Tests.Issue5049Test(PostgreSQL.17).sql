-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."Id",
	p."Name",
	t1."Key_1",
	t1."AverageGrade"
FROM
	"PersonWithAssociation" p
		INNER JOIN (
			SELECT
				AVG("a_GradeStats"."Grade"::Float) as "AverageGrade",
				"a_GradeStats"."PersonId" as "Key_1"
			FROM
				"PersonGrades" "a_GradeStats"
			GROUP BY
				"a_GradeStats"."PersonId"
		) t1 ON t1."Key_1" = p."Id"
WHERE
	t1."AverageGrade" > 5

