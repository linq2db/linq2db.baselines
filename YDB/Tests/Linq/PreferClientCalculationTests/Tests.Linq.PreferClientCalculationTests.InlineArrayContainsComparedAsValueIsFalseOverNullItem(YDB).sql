-- YDB Ydb
SELECT
	e.Id as Id,
	e.Item as Item_1,
	e.Flag as Flag
FROM
	NestedInListEntity e
WHERE
	(e.Flag) = (e.Id = e.Item AND e.Item IS NOT NULL OR e.Id = 5)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Item as Item_1,
	t1.Flag as Flag
FROM
	NestedInListEntity t1

-- YDB Ydb
SELECT
	e.Id as Id,
	e.Item as Item_1,
	e.Flag as Flag
FROM
	NestedInListEntity e
WHERE
	(e.Flag) <> (e.Id = e.Item AND e.Item IS NOT NULL OR e.Id = 5)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Item as Item_1,
	t1.Flag as Flag
FROM
	NestedInListEntity t1

