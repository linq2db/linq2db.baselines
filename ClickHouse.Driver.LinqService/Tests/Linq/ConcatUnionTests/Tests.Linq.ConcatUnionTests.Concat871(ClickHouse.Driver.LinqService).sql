BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	c_1.Value1,
	toInt32(NULL) as ParentID
FROM
	Parent c_1
UNION ALL
SELECT
	toInt32(NULL) as Value1,
	c_2.ParentID as ParentID
FROM
	Child c_2

