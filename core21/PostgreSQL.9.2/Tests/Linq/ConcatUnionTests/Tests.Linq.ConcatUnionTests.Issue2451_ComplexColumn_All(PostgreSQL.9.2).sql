BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	p."FirstName"
FROM
	"Person" p
UNION ALL
SELECT
	p_1."FirstName" || '/' || p_1."LastName"
FROM
	"Person" p_1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	p."FirstName" || '/' || p."LastName"
FROM
	"Person" p
UNION ALL
SELECT
	p_1."FirstName"
FROM
	"Person" p_1

