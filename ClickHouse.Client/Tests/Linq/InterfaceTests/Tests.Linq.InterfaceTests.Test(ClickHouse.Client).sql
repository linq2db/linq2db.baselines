BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Parent gr
GROUP BY
	gr.ParentID

