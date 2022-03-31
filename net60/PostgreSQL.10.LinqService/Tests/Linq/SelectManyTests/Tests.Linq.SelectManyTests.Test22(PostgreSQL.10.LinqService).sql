BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."PersonID",
	t1."FirstName",
	p3."LastName"
FROM
	(
		SELECT
			p."PersonID",
			p2."PersonID" as "PersonID_1",
			p."LastName",
			p2."FirstName"
		FROM
			"Person" p,
			"Person" p2
	) t1,
	"Person" p3
WHERE
	t1."PersonID" = t1."PersonID_1" AND t1."LastName" = p3."LastName" AND
	t1."PersonID" = 1

