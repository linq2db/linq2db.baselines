BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_p.ParentID,
	_p.Value1
FROM
	Parent _p
WHERE
	_p.ParentID = toInt32(3)

