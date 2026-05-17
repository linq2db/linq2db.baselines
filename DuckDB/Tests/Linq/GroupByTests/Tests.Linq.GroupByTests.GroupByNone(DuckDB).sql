-- DuckDB

SELECT
	MIN(gr.ParentID),
	MAX(gr.ParentID)
FROM
	Parent gr

