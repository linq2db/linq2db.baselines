BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	(COUNT(*) || ' items have not been processed, e.g. #' || MIN(g_1."PersonID")) || '.'
FROM
	"Person" g_1
WHERE
	g_1."LastName" <> 'ERROR'
HAVING
	COUNT(*) > 0

