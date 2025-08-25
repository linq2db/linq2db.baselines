BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	p."LastName" || ', ' || p."FirstName"
FROM
	"Person" p
WHERE
	p."LastName" || ', ' || p."FirstName" = 'Pupkin, John'

