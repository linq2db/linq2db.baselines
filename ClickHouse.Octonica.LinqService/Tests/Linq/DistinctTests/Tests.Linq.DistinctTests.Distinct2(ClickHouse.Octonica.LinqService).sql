BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT DISTINCT
	Coalesce(p.Value1, p.ParentID % 2)
FROM
	Parent p

