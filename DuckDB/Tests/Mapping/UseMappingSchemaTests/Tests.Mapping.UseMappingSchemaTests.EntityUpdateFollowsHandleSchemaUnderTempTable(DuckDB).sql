-- DuckDB
CREATE TABLE SourceSchemaRowTemp
(
	Id      INTEGER,
	"Value" INTEGER,
	Name    VARCHAR,

	PRIMARY KEY (Id, "Value")
)

-- DuckDB
DECLARE $tableName NVarChar(19) -- String
SET     $tableName = 'SourceSchemaRowTemp'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK SourceSchemaRowTemp(Id, Value, Name)

-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 6
DECLARE $Name NVarChar(1) -- String
SET     $Name = 'b'
DECLARE $Id  -- Int32
SET     $Id = 1

UPDATE
	SourceSchemaRow
SET
	"Value" = $Value,
	Name = $Name
WHERE
	SourceSchemaRow.Id = $Id

-- DuckDB
DROP TABLE IF EXISTS SourceSchemaRowTemp

-- DuckDB
SELECT
	t1.Id,
	t1."Value",
	t1.Name
FROM
	SourceSchemaRow t1
LIMIT 2

