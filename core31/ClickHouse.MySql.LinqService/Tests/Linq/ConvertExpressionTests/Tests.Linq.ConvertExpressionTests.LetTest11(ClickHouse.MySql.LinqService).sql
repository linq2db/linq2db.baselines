BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID > toInt32(0)
ORDER BY
	c_1.ParentID
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ChildID > toInt32(-100)
ORDER BY
	c_1.ParentID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toInt32(1)
FROM
	Parent p
ORDER BY
	p.ParentID

