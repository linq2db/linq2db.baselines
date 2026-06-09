-- YDB Ydb

SELECT
	p1.ParentID as ParentID,
	p1.ParentID as ParentID_1,
	p1.Value1 as Value1
FROM
	Parent p1
UNION ALL
SELECT
	Coalesce(p2.Value1, 0) as ParentID,
	CAST(NULL AS Int32) as ParentID_1,
	CAST(NULL AS Int32) as Value1
FROM
	Parent p2

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

