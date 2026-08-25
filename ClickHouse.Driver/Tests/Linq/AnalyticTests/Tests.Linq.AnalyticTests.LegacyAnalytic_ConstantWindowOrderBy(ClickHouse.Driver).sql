-- ClickHouse.Driver ClickHouse
SELECT
	p.ParentID,
	toInt64(ROW_NUMBER() OVER ()),
	toInt64(ROW_NUMBER() OVER (ORDER BY p.ParentID)),
	toInt64(ROW_NUMBER() OVER (ORDER BY p.ParentID))
FROM
	Parent p

