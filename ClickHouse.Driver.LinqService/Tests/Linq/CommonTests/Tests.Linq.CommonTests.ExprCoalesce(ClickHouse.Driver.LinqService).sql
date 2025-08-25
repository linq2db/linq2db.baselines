BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	Coalesce(p.Value1, 100) + 50
FROM
	Parent p

