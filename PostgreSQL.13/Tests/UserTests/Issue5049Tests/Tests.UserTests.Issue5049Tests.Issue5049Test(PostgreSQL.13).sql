BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."Id",
	p."Name",
	t1."Key_1",
	t1."AverageGrade"
FROM
	"PersonWithAssociation" p
		INNER JOIN LATERAL (
			SELECT
				AVG("a_GradeStats"."Grade"::Float) as "AverageGrade",
				"a_GradeStats"."PersonId" as "Key_1"
			FROM
				"PersonGrades" "a_GradeStats"
			WHERE
				"a_GradeStats"."PersonId" = p."Id"
			GROUP BY
				"a_GradeStats"."PersonId"
		) t1 ON 1=1
WHERE
	t1."AverageGrade" > 5

