-- YDB Ydb
SELECT
	x.Id as Id
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.`Group` ORDER BY CASE
				WHEN e.Priority IS NULL THEN 1
				ELSE 0
			END, e.Priority, e.Id) as RowNumber,
			e.`Group` as Group_1,
			e.Priority as RowNumber_1,
			e.Id as Id
		FROM
			TestData e
	) x
WHERE
	x.RowNumber = 1l
ORDER BY
	CASE
		WHEN x.Group_1 IS NULL THEN 1
		ELSE 0
	END,
	x.Group_1,
	CASE
		WHEN x.RowNumber_1 IS NULL THEN 1
		ELSE 0
	END,
	x.RowNumber_1,
	x.Id

-- YDB Ydb
SELECT
	x.Id as Id
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.`Group` ORDER BY CASE
				WHEN e.Priority IS NULL THEN 1
				ELSE 0
			END, e.Priority, e.Id) as RowNumber,
			e.`Group` as Group_1,
			e.Priority as RowNumber_1,
			e.Id as Id
		FROM
			TestData e
	) x
WHERE
	x.RowNumber = 1l
ORDER BY
	CASE
		WHEN x.Group_1 IS NULL THEN 1
		ELSE 0
	END,
	x.Group_1,
	CASE
		WHEN x.RowNumber_1 IS NULL THEN 1
		ELSE 0
	END,
	x.RowNumber_1,
	x.Id

