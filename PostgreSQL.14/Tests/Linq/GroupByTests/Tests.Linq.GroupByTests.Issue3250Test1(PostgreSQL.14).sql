BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	(COUNT(*)::text || ' items have not been processed, e.g. #' || Coalesce(MIN(g_1."PersonID")::text, '')) || '.'
FROM
	"Person" g_1
WHERE
	g_1."LastName" <> 'ERROR'
HAVING
	COUNT(*) > 0

