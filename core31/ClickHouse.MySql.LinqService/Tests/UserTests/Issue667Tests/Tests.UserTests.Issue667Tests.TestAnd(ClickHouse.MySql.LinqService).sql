BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	f.ParentID,
	f.Value1
FROM
	Parent f
WHERE
	f.ParentID >= toInt32(1) AND f.ParentID <= toInt32(4)

