-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.OtherId,
	a_Association.Id
FROM
	GuidConvertedOwner t1
		LEFT JOIN GuidConvertedTarget a_Association ON t1.OtherId = toString(a_Association.Id)

