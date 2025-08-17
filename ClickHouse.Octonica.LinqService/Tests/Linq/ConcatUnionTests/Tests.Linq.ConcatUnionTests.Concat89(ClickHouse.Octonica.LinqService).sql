BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	c_1.ParentID as Value1,
	c_1.ParentID as Value1_1
FROM
	Child c_1
UNION ALL
SELECT
	toInt32(NULL) as Value1,
	c_2.ParentID as Value1_1
FROM
	Parent c_2

