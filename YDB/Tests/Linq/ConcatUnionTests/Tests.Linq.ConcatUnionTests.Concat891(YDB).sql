-- YDB Ydb

SELECT
	t1.Value1 as Value1,
	t1.ParentID as ParentID
FROM
	(
		SELECT
			c_1.ParentID as Value1,
			c_1.ParentID as ParentID
		FROM
			Child c_1
		UNION
		SELECT
			CAST(NULL AS Int32) as Value1,
			c_2.ParentID as ParentID
		FROM
			Parent c_2
	) t1
UNION ALL
SELECT
	c_3.ParentID as Value1,
	c_3.ParentID as ParentID
FROM
	Child c_3

