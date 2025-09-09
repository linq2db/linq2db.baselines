BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	Coalesce(minOrNull(gr.ParentID), 10)
FROM
	Parent gr

