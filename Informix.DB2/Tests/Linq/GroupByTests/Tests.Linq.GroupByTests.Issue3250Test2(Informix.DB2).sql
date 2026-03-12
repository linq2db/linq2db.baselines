-- Informix.DB2 Informix

SELECT
	(To_Char(COUNT(*)) || ' items have not been processed, e.g. #' || Nvl(To_Char(MIN(s.PersonID)), '')) || '.'
FROM
	Person s
WHERE
	s.LastName <> 'ERROR'
HAVING
	COUNT(*) > 0

