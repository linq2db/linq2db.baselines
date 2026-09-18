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
	d.Id as Id,
	d.ItemId as ItemId,
	d.Log as Log
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN ItemLog d ON k_1.item = d.ItemId
ORDER BY
	d.Id

