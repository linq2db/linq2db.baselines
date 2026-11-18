-- YDB Ydb
SELECT
	x.Value1 as Value1,
	x.ParentID as ParentID
FROM
	Parent x
WHERE
	x.ParentID > 3
UNION
SELECT
	p2.ParentID as Value1,
	p2.Value1 as ParentID
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

