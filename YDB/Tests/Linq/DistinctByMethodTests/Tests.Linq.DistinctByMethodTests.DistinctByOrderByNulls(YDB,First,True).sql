-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.Group_1 as Group_1,
	t1.Date_1 as Date_1,
	t1.Amount as Amount,
	t1.IsActive as IsActive,
	t1.Priority as Priority
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.`Group` ORDER BY CASE
				WHEN e.Priority IS NULL THEN 0
				ELSE 1
			END, e.Priority DESC, e.Id, e.`Date`) as RowNumber,
			e.Priority as Priority,
			e.Id as Id,
			e.`Date` as Date_1,
			e.Name as Name,
			e.`Group` as Group_1,
			e.Amount as Amount,
			e.IsActive as IsActive
		FROM
			TestData e
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	CASE
		WHEN t1.Priority IS NULL THEN 0
		ELSE 1
	END,
	t1.Priority DESC,
	t1.Id,
	t1.Date_1

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

