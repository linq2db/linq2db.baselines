-- YDB Ydb
DECLARE $take Int32
SET     $take = 7

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Value1 ORDER BY e.ParentID DESC) as RowNumber,
			e.ParentID as ParentID,
			e.Value1 as Value1
		FROM
			(
				SELECT
					p.ParentID as ParentID,
					p.Value1 as Value1
				FROM
					Parent p
				ORDER BY
					p.ParentID DESC
				LIMIT $take
			) e
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.ParentID DESC

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

