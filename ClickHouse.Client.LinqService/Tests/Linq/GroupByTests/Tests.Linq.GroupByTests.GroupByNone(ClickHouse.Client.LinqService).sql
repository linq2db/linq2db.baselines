BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	min(gr.ParentID),
	max(gr.ParentID)
FROM
	Parent gr

