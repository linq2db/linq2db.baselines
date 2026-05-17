-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	e."FirstName",
	"a_Person"."PersonID" IS NOT NULL AND "a_Person"."LastName" IS NOT NULL,
	"a_Person"."LastName"
FROM
	"Person" e
		LEFT JOIN "Patient" "a_Patient" ON e."PersonID" = "a_Patient"."PersonID"
		LEFT JOIN "Person" "a_Person" ON "a_Patient"."PersonID" = "a_Person"."PersonID"

