-- YDB Ydb

SELECT
	c_1.Value1 as Value1,
	CAST(NULL AS Int32) as ParentID
FROM
	Parent c_1
UNION ALL
SELECT
	CAST(NULL AS Int32) as Value1,
	c_2.ParentID as ParentID
FROM
	Child c_2

