-- ClickHouse.MySql ClickHouse

SELECT
	minOrNull(gr.ParentID),
	maxOrNull(gr.ParentID)
FROM
	Parent gr

