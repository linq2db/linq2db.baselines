BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	((p.ParentID = toInt32(1) OR p.ParentID >= toInt32(1)) OR p.ParentID >= toInt32(10000))
ORDER BY
	p.ParentID
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	((p.ParentID = toInt32(2) OR p.ParentID >= toInt32(2)) OR p.ParentID >= toInt32(10000))
ORDER BY
	p.ParentID
LIMIT toInt32(1)

