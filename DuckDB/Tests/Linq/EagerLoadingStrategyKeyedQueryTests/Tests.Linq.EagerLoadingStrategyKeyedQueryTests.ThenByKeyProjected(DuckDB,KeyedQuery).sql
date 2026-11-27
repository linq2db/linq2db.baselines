-- DuckDB
SELECT
	i."Value",
	i.Id
FROM
	EagerOrderItem i
ORDER BY
	i.Id

-- DuckDB
SELECT
	l.ItemId,
	l.Id,
	l.Log
FROM
	EagerOrderItemLog l
WHERE
	l.ItemId IN (1, 2)
ORDER BY
	l.ItemId,
	l.Id DESC

