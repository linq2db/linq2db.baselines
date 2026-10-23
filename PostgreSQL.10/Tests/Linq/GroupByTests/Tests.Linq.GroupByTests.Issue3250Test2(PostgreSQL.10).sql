-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)::text || ' items have not been processed, e.g. #' || Coalesce(MIN(s."PersonID")::text, '') || '.'
FROM
	"Person" s
WHERE
	s."LastName" <> 'ERROR'
HAVING
	COUNT(*) > 0

