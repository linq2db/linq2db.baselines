-- DuckDB
DECLARE $tableName NVarChar(21) -- String
SET     $tableName = 'DateTimeDiscriminator'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK DateTimeDiscriminator(Id, TestDate)

