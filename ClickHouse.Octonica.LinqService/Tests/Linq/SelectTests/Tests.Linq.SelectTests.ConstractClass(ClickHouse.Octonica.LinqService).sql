BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	f.ParentID,
	lowerUTF8(toString(f.Value1))
FROM
	Parent f

