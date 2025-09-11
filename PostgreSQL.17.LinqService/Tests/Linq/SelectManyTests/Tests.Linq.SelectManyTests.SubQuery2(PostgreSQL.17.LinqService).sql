BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	p."PersonID",
	p2."FirstName"
FROM
	"Person" p
		CROSS JOIN "Person" p2
WHERE
	(p."PersonID" = 1 OR p."PersonID" = 2) AND p2."PersonID" <> 2 AND
	p."PersonID" = p2."PersonID"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	p."PersonID",
	p2."FirstName"
FROM
	"Person" p
		CROSS JOIN "Person" p2
WHERE
	(p."PersonID" = 1 OR p."PersonID" = 2) AND p2."PersonID" <> 2 AND
	p."PersonID" = p2."PersonID"

