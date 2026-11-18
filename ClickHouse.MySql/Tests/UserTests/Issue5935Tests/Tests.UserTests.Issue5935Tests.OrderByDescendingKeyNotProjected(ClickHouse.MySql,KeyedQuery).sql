-- ClickHouse.MySql ClickHouse
SELECT
	i.Value,
	i.Id
FROM
	Item i
ORDER BY
	i.Id

-- ClickHouse.MySql ClickHouse
SELECT
	l.ItemId,
	l.Log
FROM
	ItemLog l
WHERE
	l.ItemId IN (1, 2)
ORDER BY
	l.Id DESC

