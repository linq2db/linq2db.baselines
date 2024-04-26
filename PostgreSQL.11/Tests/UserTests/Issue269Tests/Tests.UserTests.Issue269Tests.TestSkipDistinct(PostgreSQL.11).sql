BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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
				SELECT DISTINCT
					t2."Diagnosis"
				FROM
					(
						SELECT
							"a_Patient"."Diagnosis"
						FROM
							"Person" t1
								LEFT JOIN "Patient" "a_Patient" ON t1."PersonID" = "a_Patient"."PersonID"
						WHERE
							t1."PersonID" = pat."PersonID"
						ORDER BY
							t1."FirstName" DESC
						OFFSET 0 
					) t2
			) t3
		WHERE
			t3."Diagnosis" LIKE '%with%' ESCAPE '~'
	)

