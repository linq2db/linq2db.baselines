BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	o.ParentID,
	o.Value1
FROM
	Parent o
WHERE
	(o.ParentID IN (toInt32(1), toInt32(2), toInt32(3)) OR o.ParentID = toInt32(4))
LIMIT toInt32(1)

