-- ClickHouse.MySql ClickHouse
SELECT
	p.ParentID,
	p.Value1,
	toInt64(ROW_NUMBER() OVER (PARTITION BY p.Value1))
FROM
	Parent p

