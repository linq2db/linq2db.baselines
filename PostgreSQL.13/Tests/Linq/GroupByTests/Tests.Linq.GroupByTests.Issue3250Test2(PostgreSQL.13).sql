BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	(COUNT(*) || ' items have not been processed, e.g. #' || MIN(s."PersonID")) || '.'
FROM
	"Person" s
WHERE
	s."LastName" <> 'ERROR'
HAVING
	COUNT(*) > 0

