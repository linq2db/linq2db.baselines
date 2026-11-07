-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Rank as Rank,
	o.Id as OtherId_1
FROM
	(
		SELECT
			q.Id as Id,
			ROW_NUMBER() OVER (ORDER BY q.Id) as Rank,
			q.CategoryId as CategoryId
		FROM
			WindowFunctionTestEntity q
	) t1
		LEFT JOIN WindowFunctionTestEntity o ON t1.CategoryId = o.CategoryId

