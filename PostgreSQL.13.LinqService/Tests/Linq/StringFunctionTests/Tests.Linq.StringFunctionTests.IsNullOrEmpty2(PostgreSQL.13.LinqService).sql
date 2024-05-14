BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN p."FirstName" IS NULL OR Length(p."FirstName") = 0 THEN True
		ELSE False
	END
FROM
	"Person" p
WHERE
	p."PersonID" = 1

