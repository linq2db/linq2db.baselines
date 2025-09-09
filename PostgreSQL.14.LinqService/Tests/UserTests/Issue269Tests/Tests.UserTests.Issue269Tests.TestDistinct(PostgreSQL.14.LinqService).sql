BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

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
			"Person" t1
				LEFT JOIN "Patient" "a_Patient" ON t1."PersonID" = "a_Patient"."PersonID"
		WHERE
			t1."PersonID" = pat."PersonID" AND "a_Patient"."Diagnosis" LIKE '%with%' ESCAPE '~'
	)

