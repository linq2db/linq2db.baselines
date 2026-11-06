-- YDB Ydb
SELECT
	t1.RowNumber_1 as RowNumber,
	t1.RowNumber_2 as RowNumber_1,
	t1.Group_1 as Group_1,
	t1.RowNumber_3 as RowNumber_2,
	t1.Amount as Amount,
	t1.IsActive as IsActive,
	t1.Priority as Priority
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Id, e.Name ORDER BY e.Name, e.`Date` DESC) as RowNumber,
			e.Id as RowNumber_1,
			e.Name as RowNumber_2,
			e.`Date` as RowNumber_3,
			e.`Group` as Group_1,
			e.Amount as Amount,
			e.IsActive as IsActive,
			e.Priority as Priority
		FROM
			TestData e
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.RowNumber_2,
	t1.RowNumber_3 DESC

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.`Group` as Group_1,
	t1.`Date` as Date_1,
	t1.Amount as Amount,
	t1.IsActive as IsActive,
	t1.Priority as Priority
FROM
	TestData t1

