BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND '123[456' LIKE '%~[%' ESCAPE '~'

