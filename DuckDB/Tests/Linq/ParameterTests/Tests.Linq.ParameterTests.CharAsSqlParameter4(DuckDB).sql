-- DuckDB
DECLARE $s1 NVarChar(5) -- String
SET     $s1 = '--'

SELECT
	CAST($s1 AS VARCHAR)

