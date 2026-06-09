-- YDB Ydb

SELECT
	p1.ParentID as ParentID,
	CAST(NULL AS Int32) as Value1
FROM
	Parent p1
UNION
SELECT
	p2.ParentID as ParentID,
	p2.Value1 as Value1
FROM
	Parent p2

