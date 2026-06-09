-- YDB Ydb

SELECT
	p2.ParentID as ParentID,
	p2.Value1 as Value1
FROM
	Parent p1
		RIGHT JOIN Parent p2 ON p1.ParentID = p2.ParentID AND p1.Value1 = p2.Value1

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

