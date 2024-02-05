BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT DISTINCT
	Coalesce(p.Value1, p.ParentID % toInt32(2))
FROM
	Parent p

