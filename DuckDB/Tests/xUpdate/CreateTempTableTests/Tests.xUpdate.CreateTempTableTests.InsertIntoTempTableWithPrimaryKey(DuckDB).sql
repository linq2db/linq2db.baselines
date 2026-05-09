-- DuckDB

CREATE TEMPORARY TABLE TableWithPrimaryKey2
(
	"Key" INTEGER,

	PRIMARY KEY ("Key")
)

-- DuckDB
DECLARE $tableName NVarChar(20) -- String
SET     $tableName = 'TableWithPrimaryKey2'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK TableWithPrimaryKey2(Key)

-- DuckDB

DROP TABLE IF EXISTS TableWithPrimaryKey2

