BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	bitShiftRight(toInt64(p.ParentID), 1) > toInt64(0)

