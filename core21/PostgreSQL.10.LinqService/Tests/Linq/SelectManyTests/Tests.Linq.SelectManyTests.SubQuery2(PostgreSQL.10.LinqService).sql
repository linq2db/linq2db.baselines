BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	p."PersonID", 
	p_1."FirstName"
FROM
	"Person" p,
	"Person" p_1
WHERE
	p."PersonID" = p_1."PersonID" AND (p."PersonID" = 1 OR p."PersonID" = 2) AND
	p_1."PersonID" <> 2

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	p."PersonID", 
	p_1."FirstName"
FROM
	"Person" p,
	"Person" p_1
WHERE
	p."PersonID" = p_1."PersonID" AND (p."PersonID" = 1 OR p."PersonID" = 2) AND
	p_1."PersonID" <> 2

