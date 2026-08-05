-- DuckDB
DECLARE $text NVarChar(3) -- String
SET     $text = '123'

SELECT
	CAST(c_1.ChildID AS VARCHAR) || ',' || Coalesce($text, '')
FROM
	Child c_1
LIMIT 1

