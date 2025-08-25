BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	minOrNull(gr.ParentID),
	maxOrNull(gr.ParentID)
FROM
	Parent gr

