BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN Length(p."FirstName") = 0 THEN True
		ELSE False
	END
FROM
	"Person" p
WHERE
	p."PersonID" = 1

