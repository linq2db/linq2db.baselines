-- DuckDB
DECLARE $tableName NVarChar(15) -- String
SET     $tableName = 'Common_Language'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK Common_Language(LanguageID, TimeSpan, TimeSpanNull)

