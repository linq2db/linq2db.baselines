BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x
WHERE
	x."PersonID" IN (
		SELECT
			t1.value
		FROM
			(
				SELECT 1 as value
			) t1(value)
	)

