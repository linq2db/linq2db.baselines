-- Informix.DB2 Informix

SELECT
	(To_Char(COUNT(*)) || ' items have not been processed, e.g. #' || Nvl(To_Char(MIN(g_1.PersonID)), '')) || '.'
FROM
	Person g_1
WHERE
	g_1.LastName <> 'ERROR'
HAVING
	COUNT(*) > 0

