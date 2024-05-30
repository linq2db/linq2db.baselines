BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT DISTINCT
	Coalesce(p.Value1, p.ParentID % 2)
FROM
	Parent p

