-- ClickHouse.MySql ClickHouse

SELECT
	concat(toString(g_2.Message), ' items have not been processed, e.g. #', Coalesce(toString(g_2.Message_1), ''), '.')
FROM
	(
		SELECT
			COUNT(*) as Message,
			minOrNull(g_1.PersonID) as Message_1
		FROM
			Person g_1
		WHERE
			g_1.LastName <> 'ERROR'
	) g_2
WHERE
	g_2.Message > 0

