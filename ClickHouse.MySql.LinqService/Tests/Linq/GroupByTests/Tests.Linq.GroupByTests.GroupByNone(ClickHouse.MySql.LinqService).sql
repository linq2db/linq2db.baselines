BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	min(gr.ParentID),
	max(gr.ParentID)
FROM
	Parent gr

