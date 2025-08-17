BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	p."FirstName" || '/' || p."LastName"
FROM
	"Person" p
UNION ALL
SELECT
	p_1."FirstName"
FROM
	"Person" p_1

