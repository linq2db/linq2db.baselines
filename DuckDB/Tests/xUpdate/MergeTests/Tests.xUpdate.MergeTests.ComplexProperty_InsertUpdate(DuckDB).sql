-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Code NVarChar(5) -- String
SET     $Code = 'alpha'
DECLARE $Nested_Field  -- Boolean
SET     $Nested_Field = False

INSERT INTO ComplexPropertyTarget
(
	Id,
	Code,
	Field
)
VALUES
(
	$Id,
	$Code,
	$Nested_Field
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $Code NVarChar(4) -- String
SET     $Code = 'beta'
DECLARE $Nested_Field  -- Boolean
SET     $Nested_Field = False

INSERT INTO ComplexPropertyTarget
(
	Id,
	Code,
	Field
)
VALUES
(
	$Id,
	$Code,
	$Nested_Field
)

-- DuckDB

MERGE INTO ComplexPropertyTarget Target
USING (VALUES
	(1,'alpha-new',True), (3,'gamma',True)
) Source
(
	Id,
	Code,
	Nested_Field
)
ON (Target.Id = Source.Id)

WHEN MATCHED THEN
UPDATE
SET
	Code = Source.Code,
	Field = Source.Nested_Field

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	Code,
	Field
)
VALUES
(
	Source.Id,
	Source.Code,
	Source.Nested_Field
)

-- DuckDB

SELECT
	t1.Id,
	t1.Code,
	t1.Field
FROM
	ComplexPropertyTarget t1
ORDER BY
	t1.Id

