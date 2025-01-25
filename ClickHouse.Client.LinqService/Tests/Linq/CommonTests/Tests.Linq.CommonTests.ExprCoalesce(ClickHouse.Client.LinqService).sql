BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Coalesce(p.Value1, 100) + 50
FROM
	Parent p

