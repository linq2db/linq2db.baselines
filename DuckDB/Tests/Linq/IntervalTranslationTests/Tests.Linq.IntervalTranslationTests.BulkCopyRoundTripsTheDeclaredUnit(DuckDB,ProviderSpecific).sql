-- DuckDB
DECLARE $tableName NVarChar(11) -- String
SET     $tableName = 'DurationRow'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK DurationRow(Id, InSeconds, InTicks, Undeclared, UndeclaredSeconds)

-- DuckDB
SELECT
	t1.Id,
	t1.InSeconds,
	t1.InTicks,
	t1.Undeclared,
	t1.UndeclaredSeconds
FROM
	DurationRow t1
LIMIT 2

