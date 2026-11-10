-- ClickHouse.Octonica ClickHouse
SELECT
	g_1.Id,
	t1.First_1,
	t1.First_2
FROM
	BatchGroup g_1
		LEFT JOIN (
			SELECT
				1 as First_1,
				i.Value as First_2,
				ROW_NUMBER() OVER (PARTITION BY i.GroupId ORDER BY i.Id) as rn,
				i.GroupId as GroupId
			FROM
				BatchItem i
		) t1 ON t1.GroupId = g_1.Id AND t1.rn = 1
ORDER BY
	g_1.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			BatchItem t1
	)

-- ClickHouse.Octonica ClickHouse
SELECT
	g_1.Id,
	t1.First_1,
	t1.First_2
FROM
	BatchGroup g_1
		LEFT JOIN (
			SELECT
				1 as First_1,
				i.Value as First_2,
				ROW_NUMBER() OVER (PARTITION BY i.GroupId ORDER BY i.Id) as rn,
				i.GroupId as GroupId
			FROM
				BatchItem i
			WHERE
				i.Id > 8
		) t1 ON t1.GroupId = g_1.Id AND t1.rn = 1
ORDER BY
	g_1.Id

