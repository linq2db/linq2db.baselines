-- ClickHouse.Driver ClickHouse
SELECT
	t.Id
FROM
	CountTarget t
WHERE
	t.ItemsCount = 2 AND t.EmptyCount = 0

