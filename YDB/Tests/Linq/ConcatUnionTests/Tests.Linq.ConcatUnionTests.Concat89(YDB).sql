-- YDB Ydb

SELECT
	c_1.ParentID as Value1,
	c_1.ParentID as Value1_1
FROM
	Child c_1
UNION ALL
SELECT
	CAST(NULL AS Int32) as Value1,
	c_2.ParentID as Value1_1
FROM
	Parent c_2

