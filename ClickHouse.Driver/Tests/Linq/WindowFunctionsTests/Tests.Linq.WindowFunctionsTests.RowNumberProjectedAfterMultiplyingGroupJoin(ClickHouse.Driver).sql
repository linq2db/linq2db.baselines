-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.Rank,
	o.Id
FROM
	(
		SELECT
			q.Id as Id,
			toInt64(ROW_NUMBER() OVER (ORDER BY q.Id)) as Rank,
			q.CategoryId as CategoryId
		FROM
			WindowFunctionTestEntity q
	) t1
		LEFT JOIN WindowFunctionTestEntity o ON t1.CategoryId = o.CategoryId

