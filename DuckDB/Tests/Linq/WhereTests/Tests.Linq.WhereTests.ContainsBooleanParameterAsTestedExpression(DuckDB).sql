-- DuckDB
DECLARE $flag BOOLEAN -- Boolean
SET     $flag = True

SELECT
	t.ID
FROM
	LinqDataTypes t
WHERE
	$flag IN (t.BoolValue)

