-- Informix.DB2 Informix
DECLARE @Code VarChar(5) -- String
SET     @Code = 'first'
DECLARE @Key_Value Integer(4) -- Int32
SET     @Key_Value = 1

INSERT INTO NestedKeyTarget
(
	Code,
	Id
)
VALUES
(
	@Code,
	@Key_Value
)

-- Informix.DB2 Informix
DECLARE @Code VarChar(7) -- String
SET     @Code = 'skipped'
DECLARE @Key_Value Integer(4) -- Int32
SET     @Key_Value = 2

INSERT INTO NestedKeyTarget
(
	Code,
	Id
)
VALUES
(
	@Code,
	@Key_Value
)

-- Informix.DB2 Informix
MERGE INTO NestedKeyTarget Target
USING (
	SELECT 1::Int AS Key_Value, 'first-updated'::NVarChar(50) AS Code FROM table(set{1})) Source
(
	Key_Value,
	Code
)
ON (Target.Id = Source.Key_Value)

WHEN MATCHED THEN
UPDATE
SET
	Code = Source.Code

-- Informix.DB2 Informix
SELECT
	t1.Code,
	t1.Id
FROM
	NestedKeyTarget t1
ORDER BY
	t1.Id

