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
	a_Tags.Id as Id,
	a_Tags.LogId as LogId,
	a_Tags.Name as Name
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN ItemLog d ON k_1.item = d.ItemId
		INNER JOIN ItemTag a_Tags ON d.Id = a_Tags.LogId
ORDER BY
	d.Id

