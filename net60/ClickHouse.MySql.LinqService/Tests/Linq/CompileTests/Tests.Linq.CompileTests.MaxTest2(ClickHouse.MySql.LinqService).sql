BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	maxOrNull(c_1.ParentID)
FROM
	Child c_1
WHERE
	c_1.ParentID = toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	maxOrNull(c_1.ParentID)
FROM
	Child c_1
WHERE
	c_1.ParentID = toInt32(-1)

