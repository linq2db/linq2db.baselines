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
	k_1.item,
	d_1.Id,
	d_1.ItemId,
	d_1.Log
FROM
	(
		SELECT 1 AS item
		UNION ALL
		SELECT 2) k_1
		INNER JOIN (
			SELECT
				d.Id as Id,
				d.ItemId as ItemId,
				d.Log as Log,
				ROW_NUMBER() OVER (PARTITION BY d.ItemId ORDER BY d.Id DESC) as rn
			FROM
				ItemLog d
		) d_1 ON k_1.item = d_1.ItemId AND d_1.rn <= 2
ORDER BY
	d_1.Id DESC

