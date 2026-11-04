-- YDB Ydb
SELECT
	t1.RowNumber_3 as RowNumber,
	t1.Name as Name,
	t1.RowNumber_1 as RowNumber_1,
	t1.RowNumber_4 as RowNumber_2,
	t1.Amount as Amount,
	t1.IsActive as IsActive,
	t1.RowNumber_2 as RowNumber_3
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.`Group` ORDER BY e.Priority DESC, e.Id, e.`Date`) as RowNumber,
			e.`Group` as RowNumber_1,
			e.Priority as RowNumber_2,
			e.Id as RowNumber_3,
			e.`Date` as RowNumber_4,
			e.Name as Name,
			e.Amount as Amount,
			e.IsActive as IsActive
		FROM
			TestData e
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.RowNumber_2 DESC,
	t1.RowNumber_3,
	t1.RowNumber_4

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

