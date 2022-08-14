BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	Count(*)
FROM
	Child c_1
WHERE
	c_1.ParentID = toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	Count(*)
FROM
	Child c_1
WHERE
	c_1.ParentID = toInt32(-1)

