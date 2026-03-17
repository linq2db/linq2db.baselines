-- ClickHouse.Driver ClickHouse

SELECT
	concat(toString(COUNT(*)), ' items have not been processed, e.g. #', Coalesce(toString(MIN(s.PersonID)), ''), '.')
FROM
	Person s
WHERE
	s.LastName <> 'ERROR'
HAVING
	COUNT(*) > 0

