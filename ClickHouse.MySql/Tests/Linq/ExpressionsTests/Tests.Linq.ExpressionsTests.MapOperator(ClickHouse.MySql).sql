BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	toInt32(bitShiftRight(toInt64(p.ParentID), 1)) > 0 AND
	toInt32(bitShiftRight(toInt64(p.ParentID), 1)) IS NOT NULL

