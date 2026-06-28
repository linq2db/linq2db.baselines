-- YDB Ydb

SELECT
	c_1.ParentID as ParentID,
	c_1.ParentID as Value1_1
FROM
	Child c_1
UNION ALL
SELECT
	CAST(NULL AS Int32) as ParentID,
	c_2.ParentID as Value1_1
FROM
	Parent c_2

