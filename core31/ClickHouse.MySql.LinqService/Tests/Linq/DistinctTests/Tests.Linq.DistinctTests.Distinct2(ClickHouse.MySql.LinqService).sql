BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT DISTINCT
	Coalesce(p.Value1, p.ParentID % toInt32(2))
FROM
	Parent p

