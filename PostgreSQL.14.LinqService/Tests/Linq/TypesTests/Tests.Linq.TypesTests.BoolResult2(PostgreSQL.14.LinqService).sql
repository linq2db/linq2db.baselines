BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN "a_Patient"."PersonID" IS NOT NULL THEN True
		ELSE False
	END
FROM
	"Person" p
		LEFT JOIN "Patient" "a_Patient" ON p."PersonID" = "a_Patient"."PersonID"

