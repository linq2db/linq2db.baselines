-- YDB Ydb
DECLARE $take Int32
SET     $take = 7

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.ParentID % 2 ORDER BY e.Value1, e.ParentID) as RowNumber,
			e.Value1 as Value1,
			e.ParentID as ParentID
		FROM
			(
				SELECT
					p.ParentID as ParentID,
					p.Value1 as Value1
				FROM
					Parent p
				ORDER BY
					p.Value1,
					p.ParentID
				LIMIT $take
			) e
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.Value1,
	t1.ParentID

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

