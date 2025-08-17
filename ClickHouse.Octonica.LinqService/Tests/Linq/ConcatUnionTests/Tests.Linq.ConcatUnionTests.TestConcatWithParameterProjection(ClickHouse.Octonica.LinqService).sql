BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toInt32(3) as Value_1,
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ChildID <= 3
UNION ALL
SELECT
	toInt32(3) as Value_1,
	c_2.ChildID as ChildID
FROM
	Child c_2
WHERE
	c_2.ChildID > 3

