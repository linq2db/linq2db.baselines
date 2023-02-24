BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	f.ParentID,
	f.Value1
FROM
	Parent f
WHERE
	(f.ParentID >= toInt32(1) OR f.ParentID <= toInt32(4))

