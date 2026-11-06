-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Value Int32
SET     $Value = 5
DECLARE $Name Text(1) -- String
SET     $Name = 'a'u

INSERT INTO SourceSchemaRow
(
	Id,
	`Value`,
	Name
)
VALUES
(
	$Id,
	$Value,
	$Name
)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.`Value` as Value_1,
	t1.Name as Name
FROM
	SourceSchemaRow t1
LIMIT 2

