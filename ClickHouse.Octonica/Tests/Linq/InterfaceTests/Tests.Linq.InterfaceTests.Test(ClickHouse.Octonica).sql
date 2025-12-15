-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Parent gr
GROUP BY
	gr.ParentID

