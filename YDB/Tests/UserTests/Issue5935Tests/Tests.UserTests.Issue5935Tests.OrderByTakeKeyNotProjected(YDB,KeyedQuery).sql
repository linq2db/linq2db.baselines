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
	d_1.Log as Log
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN (
			SELECT
				d.Log as Log,
				ROW_NUMBER() OVER (PARTITION BY d.ItemId ORDER BY d.Id) as rn,
				d.ItemId as ItemId,
				d.Id as Id
			FROM
				ItemLog d
		) d_1 ON k_1.item = d_1.ItemId
WHERE
	d_1.rn <= 2
ORDER BY
	d_1.Id

