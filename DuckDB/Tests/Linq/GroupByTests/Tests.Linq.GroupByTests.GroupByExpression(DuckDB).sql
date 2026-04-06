-- DuckDB
DECLARE $defValue  -- Int32
SET     $defValue = 10

SELECT
	Coalesce(MIN(gr.ParentID), CAST($defValue AS INTEGER))
FROM
	Parent gr

