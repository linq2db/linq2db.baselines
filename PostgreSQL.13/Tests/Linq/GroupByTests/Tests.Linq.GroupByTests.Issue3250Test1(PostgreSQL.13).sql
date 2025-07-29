BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	(COUNT(*) || ' items have not been processed, e.g. #' || MIN(g_1."PersonID")) || '.'
FROM
	"Person" g_1
WHERE
	g_1."LastName" <> 'ERROR'
HAVING
	COUNT(*) > 0

