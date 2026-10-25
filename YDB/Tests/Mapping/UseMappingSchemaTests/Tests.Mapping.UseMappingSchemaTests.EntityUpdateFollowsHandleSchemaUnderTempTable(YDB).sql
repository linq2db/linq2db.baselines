-- YDB Ydb
CREATE TABLE SourceSchemaRowTemp
(
	Id      Int32,
	`Value` Int32,
	Name    Text,

	PRIMARY KEY (Id, `Value`)
)

INSERT ASYNC BULK SourceSchemaRowTemp(Id, Value, Name)

-- YDB Ydb
DECLARE $Value Int32
SET     $Value = 6
DECLARE $Name Text(1) -- String
SET     $Name = 'b'u
DECLARE $Id Int32
SET     $Id = 1

UPDATE
	SourceSchemaRow
SET
	`Value` = $Value,
	Name = $Name
WHERE
	SourceSchemaRow.Id = $Id

-- YDB Ydb
DROP TABLE IF EXISTS SourceSchemaRowTemp

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.`Value` as Value_1,
	t1.Name as Name
FROM
	SourceSchemaRow t1
LIMIT 2

