-- YDB Ydb

SELECT
	x.Value1 as Item2,
	x.ParentID as Item1
FROM
	Parent x
WHERE
	x.ParentID > 3
UNION ALL
SELECT
	CAST(NULL AS Int32) as Item2,
	CAST(NULL AS Int32) as Item1
FROM
	Parent p2
WHERE
	p2.ParentID <= 3

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

