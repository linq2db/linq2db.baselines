BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	concat(toString(COUNT(*)), ' items have not been processed, e.g. #', toString(MIN(s.PersonID)), '.')
FROM
	Person s
WHERE
	s.LastName <> 'ERROR'
HAVING
	COUNT(*) > 0

