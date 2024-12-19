BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	c_1.ParentID,
	toInt32(NULL) as Value1
FROM
	Child c_1
UNION ALL
SELECT
	toInt32(NULL) as ParentID,
	c_2.Value1 as Value1
FROM
	Parent c_2

