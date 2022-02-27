BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID1",
	t1."FirstName",
	p3."LastName"
FROM
	(
		SELECT
			p."PersonID" as "ID1",
			p2."PersonID" as "ID2",
			p."LastName",
			p2."FirstName"
		FROM
			"Person" p,
			"Person" p2
	) t1,
	"Person" p3
WHERE
	t1."ID1" = t1."ID2" AND t1."LastName" = p3."LastName" AND
	t1."ID1" = 1

