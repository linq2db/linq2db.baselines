-- ClickHouse.Octonica ClickHouse
SELECT
	g_1.Id,
	t1.V
FROM
	BatchGroup g_1
		LEFT JOIN (
			SELECT
				i.Value as V,
				ROW_NUMBER() OVER (PARTITION BY i.GroupId ORDER BY i.Id) as rn,
				i.GroupId as GroupId
			FROM
				BatchItem i
		) t1 ON t1.GroupId = g_1.Id AND t1.rn = 1
WHERE
	g_1.Id = 1
UNION ALL
SELECT
	g_2.Id as Id,
	t2.V as V
FROM
	BatchGroup g_2
		LEFT JOIN (
			SELECT
				i_1.Value as V,
				ROW_NUMBER() OVER (PARTITION BY i_1.GroupId ORDER BY i_1.Id) as rn,
				i_1.GroupId as GroupId
			FROM
				BatchItem i_1
		) t2 ON t2.GroupId = g_2.Id AND t2.rn = 1
WHERE
	g_2.Id = 2

-- ClickHouse.Octonica ClickHouse
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			BatchItem t1
	)

