-- YDB Ydb
SELECT
	i.`Value` as Value_1,
	i.Id as Id
FROM
	Item i
ORDER BY
	i.Id

-- YDB Ydb
SELECT
	k_1.item as item_1,
	d_1.Id as Id,
	d_1.ItemId as ItemId,
	d_1.Log as Log
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN (
			SELECT
				d.Id as Id,
				d.ItemId as ItemId,
				d.Log as Log,
				ROW_NUMBER() OVER (PARTITION BY d.ItemId ORDER BY d.Id DESC) as rn
			FROM
				ItemLog d
		) d_1 ON k_1.item = d_1.ItemId
WHERE
	d_1.rn <= 2
ORDER BY
	d_1.Id DESC

