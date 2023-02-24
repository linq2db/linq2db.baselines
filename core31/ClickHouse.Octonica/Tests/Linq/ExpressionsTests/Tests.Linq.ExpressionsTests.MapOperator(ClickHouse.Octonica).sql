BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	bitShiftRight(toInt64(p.ParentID), toInt32(1)) > toInt32(0)

