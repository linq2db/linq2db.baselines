BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	pat."PersonID",
	pat."Diagnosis"
FROM
	"Patient" pat
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					"a_Patient"."Diagnosis"
				FROM
					"Person" per
						LEFT JOIN "Patient" "a_Patient" ON per."PersonID" = "a_Patient"."PersonID"
				WHERE
					per."PersonID" = pat."PersonID"
				ORDER BY
					per."FirstName" DESC
				OFFSET 0 
			) t1
		WHERE
			t1."Diagnosis" LIKE '%with%' ESCAPE '~'
	)

