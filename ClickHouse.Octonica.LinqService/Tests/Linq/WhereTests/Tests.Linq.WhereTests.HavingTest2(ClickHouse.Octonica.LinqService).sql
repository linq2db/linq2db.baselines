BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Child c_1
GROUP BY
	c_1.ParentID
HAVING
	Count(*) > toInt32(1) AND Count(*) > toInt32(1)

