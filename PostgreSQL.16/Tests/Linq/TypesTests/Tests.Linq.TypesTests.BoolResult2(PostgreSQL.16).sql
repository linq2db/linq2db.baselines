BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN "a_Patient"."PersonID" IS NOT NULL THEN True
		ELSE False
	END
FROM
	"Person" p
		LEFT JOIN "Patient" "a_Patient" ON p."PersonID" = "a_Patient"."PersonID"

