BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p_1."PersonID",
	p."FirstName"
FROM
	"Person" p_1
		CROSS JOIN "Person" p
WHERE
	p_1."PersonID" = p."PersonID" AND p."PersonID" <> 2 AND
	(p_1."PersonID" = 1 OR p_1."PersonID" = 2)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p_1."PersonID",
	p."FirstName"
FROM
	"Person" p_1
		CROSS JOIN "Person" p
WHERE
	p_1."PersonID" = p."PersonID" AND p."PersonID" <> 2 AND
	(p_1."PersonID" = 1 OR p_1."PersonID" = 2)

