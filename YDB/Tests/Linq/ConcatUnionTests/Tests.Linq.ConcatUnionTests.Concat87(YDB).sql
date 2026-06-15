-- YDB Ydb

SELECT
	c_1.ParentID as ParentID,
	CAST(NULL AS Int32) as Value1
FROM
	Child c_1
UNION ALL
SELECT
	CAST(NULL AS Int32) as ParentID,
	c_2.Value1 as Value1
FROM
	Parent c_2

