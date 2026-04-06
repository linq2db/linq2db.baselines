-- DuckDB
DECLARE $s1 NVarChar(1) -- String
SET     $s1 = chr(0)

SELECT
	CAST($s1 AS VARCHAR)

