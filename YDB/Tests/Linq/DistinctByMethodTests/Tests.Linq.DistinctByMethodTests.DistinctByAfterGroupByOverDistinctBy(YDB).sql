-- YDB Ydb
SELECT
	t1.RowNumber_1 as RowNumber,
	t1.Max_1 as Max_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e_2.RowNumber % 2 ORDER BY e_2.RowNumber DESC) as RowNumber,
			e_2.RowNumber as RowNumber_1,
			MAX(e_2.ParentID) as Max_1
		FROM
			(
				SELECT
					Coalesce(g_1.Value1, 0) as RowNumber,
					g_1.ParentID as ParentID
				FROM
					(
						SELECT
							ROW_NUMBER() OVER (PARTITION BY e_1.RowNumber ORDER BY e_1.RowNumber DESC, e_1.RowNumber_1 DESC) as RowNumber,
							e_1.RowNumber_1 as ParentID,
							e_1.Value1 as Value1
						FROM
							(
								SELECT
									Coalesce(e.Value1, 0) as RowNumber,
									e.ParentID as RowNumber_1,
									e.Value1 as Value1
								FROM
									Parent e
							) e_1
					) g_1
				WHERE
					g_1.RowNumber = 1l
			) e_2
		GROUP BY
			e_2.RowNumber
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.RowNumber_1 DESC

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

