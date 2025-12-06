-- PostgreSQL.15 PostgreSQL

SELECT
	(COUNT(*)::text || ' items have not been processed, e.g. #' || Coalesce(MIN(s."PersonID")::text, '')) || '.'
FROM
	"Person" s
WHERE
	s."LastName" <> 'ERROR'
HAVING
	COUNT(*) > 0

