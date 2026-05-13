-- DuckDB

SELECT
	CAST(COUNT(*) AS VARCHAR) || ' items have not been processed, e.g. #' || Coalesce(CAST(MIN(s.PersonID) AS VARCHAR), '') || '.'
FROM
	Person s
WHERE
	s.LastName <> 'ERROR'
HAVING
	COUNT(*) > 0

