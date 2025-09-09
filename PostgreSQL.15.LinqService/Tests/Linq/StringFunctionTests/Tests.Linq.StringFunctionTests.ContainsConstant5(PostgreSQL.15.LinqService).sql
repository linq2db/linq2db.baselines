BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND '123[456' LIKE '%~[%' ESCAPE '~'

