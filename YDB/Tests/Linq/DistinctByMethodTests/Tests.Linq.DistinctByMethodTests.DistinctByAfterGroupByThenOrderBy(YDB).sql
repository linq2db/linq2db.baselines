-- YDB Ydb
SELECT
	t1.Key_1 as Key_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Key_1 % 2 ORDER BY e.Key_1 DESC) as RowNumber,
			e.Key_1 as Key_1
		FROM
			(
				SELECT DISTINCT
					g_1.ParentID % 3 as Key_1
				FROM
					Parent g_1
			) e
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.Key_1 DESC

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

