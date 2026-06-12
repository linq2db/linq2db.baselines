-- DuckDB
DECLARE $Code NVarChar(5) -- String
SET     $Code = 'first'
DECLARE $Key_Value  -- Int32
SET     $Key_Value = 1

INSERT INTO NestedKeyTarget
(
	Code,
	Id
)
VALUES
(
	$Code,
	$Key_Value
)

-- DuckDB
DECLARE $Code NVarChar(7) -- String
SET     $Code = 'skipped'
DECLARE $Key_Value  -- Int32
SET     $Key_Value = 2

INSERT INTO NestedKeyTarget
(
	Code,
	Id
)
VALUES
(
	$Code,
	$Key_Value
)

-- DuckDB

MERGE INTO NestedKeyTarget Target
USING (VALUES
	(1,'first-updated')
) Source
(
	Key_Value,
	Code
)
ON (Target.Id = Source.Key_Value)

WHEN MATCHED THEN
UPDATE
SET
	Code = Source.Code

-- DuckDB

SELECT
	t1.Code,
	t1.Id
FROM
	NestedKeyTarget t1
ORDER BY
	t1.Id

