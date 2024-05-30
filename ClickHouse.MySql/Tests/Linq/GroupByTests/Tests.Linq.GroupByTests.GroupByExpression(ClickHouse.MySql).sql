BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Coalesce(minOrNull(gr.ParentID), 10)
FROM
	Parent gr

