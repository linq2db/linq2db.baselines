-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.CategoryId,
	t1.Name
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY q.CategoryId ORDER BY q.Id DESC)) as Rank,
			q.Id as Id,
			q.CategoryId as CategoryId,
			o.Name as Name
		FROM
			WindowFunctionTestEntity q
				LEFT JOIN WindowFunctionTestEntity o ON q.CategoryId = o.Id
	) t1
WHERE
	t1.Rank <= toInt64(1)

