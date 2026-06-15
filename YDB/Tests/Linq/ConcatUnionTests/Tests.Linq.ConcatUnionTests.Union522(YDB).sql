-- YDB Ydb

SELECT
	p1.Value1 as Value1,
	CAST(NULL AS Int32) as ParentID
FROM
	Parent p1
UNION
SELECT
	p2.Value1 as Value1,
	p2.ParentID as ParentID
FROM
	Parent p2

