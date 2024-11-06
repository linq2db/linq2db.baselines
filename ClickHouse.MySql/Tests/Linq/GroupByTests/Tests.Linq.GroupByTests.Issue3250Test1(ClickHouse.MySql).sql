BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	concat(toString(COUNT(*)), ' items have not been processed, e.g. #', toString(min(g_1.PersonID)), '.')
FROM
	Person g_1
WHERE
	g_1.LastName <> 'ERROR' AND COUNT(*) > 0

