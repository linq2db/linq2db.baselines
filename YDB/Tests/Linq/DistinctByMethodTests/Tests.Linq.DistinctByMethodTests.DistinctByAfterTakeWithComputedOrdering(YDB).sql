-- YDB Ydb
DECLARE $take Int32
SET     $take = 4

SELECT
	t1.RowNumber_2 as RowNumber,
	t1.RowNumber_1 as RowNumber_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e_1.RowNumber ORDER BY e_1.RowNumber_1, e_1.RowNumber_2 DESC) as RowNumber,
			e_1.RowNumber as RowNumber_1,
			e_1.RowNumber_2 as RowNumber_2
		FROM
			(
				SELECT
					e.Value1 as RowNumber,
					Coalesce(e.Value1, 0) as RowNumber_1,
					e.ParentID as RowNumber_2
				FROM
					Parent e
				ORDER BY
					Coalesce(e.Value1, 0),
					e.ParentID DESC
				LIMIT $take
			) e_1
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	Coalesce(t1.RowNumber_1, 0),
	t1.RowNumber_2 DESC

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

