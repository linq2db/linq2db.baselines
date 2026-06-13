-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
UNION
SELECT
	p2.ParentID as ParentID,
	CAST(NULL AS Int32) as Value1
FROM
	Parent p2

