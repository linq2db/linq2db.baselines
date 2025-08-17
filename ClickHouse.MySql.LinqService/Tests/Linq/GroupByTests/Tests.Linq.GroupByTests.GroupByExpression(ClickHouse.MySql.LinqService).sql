BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	Coalesce(minOrNull(gr.ParentID), 10)
FROM
	Parent gr

