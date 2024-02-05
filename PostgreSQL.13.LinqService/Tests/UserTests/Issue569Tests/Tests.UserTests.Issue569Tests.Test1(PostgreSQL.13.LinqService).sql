BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."PersonID_1",
	t1."FirstName",
	x."Taxonomy"
FROM
	(
		SELECT
			person_1."PersonID",
			patient_1."PersonID" as "PersonID_1",
			person_1."FirstName"
		FROM
			"Patient" patient_1,
			"Person" person_1
	) t1
		LEFT JOIN "Doctor" x ON x."PersonID" = t1."PersonID" AND x."PersonID" = t1."PersonID_1"
WHERE
	t1."FirstName" LIKE 'J%' ESCAPE '~'
ORDER BY
	t1."PersonID_1",
	t1."FirstName",
	x."Taxonomy"

