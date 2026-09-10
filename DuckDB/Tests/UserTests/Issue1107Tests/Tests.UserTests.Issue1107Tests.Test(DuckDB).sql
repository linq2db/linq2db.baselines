-- DuckDB
DECLARE $tableName NVarChar(11) -- String
SET     $tableName = 'Issue1107TB'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK Issue1107TB(Id, TestDate)

