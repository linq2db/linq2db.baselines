-- YDB Ydb

SELECT
	p1.ParentID as ParentID,
	p1.Value1 as Value1
FROM
	Parent p1
WHERE
	p1.ParentID > 3
UNION
SELECT
	CAST(NULL AS Int32) as ParentID,
	CAST(NULL AS Int32) as Value1
FROM
	Parent p2
WHERE
	p2.ParentID <= 3

