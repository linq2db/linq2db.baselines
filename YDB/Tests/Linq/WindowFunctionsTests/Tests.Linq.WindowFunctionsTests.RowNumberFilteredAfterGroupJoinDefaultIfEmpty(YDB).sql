-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.CategoryId as CategoryId,
	t1.Name as Name
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY q.CategoryId ORDER BY q.Id DESC) as Rank,
			q.Id as Id,
			q.CategoryId as CategoryId,
			o.Name as Name
		FROM
			WindowFunctionTestEntity q
				LEFT JOIN WindowFunctionTestEntity o ON q.CategoryId = o.Id
	) t1
WHERE
	t1.Rank <= 1l

