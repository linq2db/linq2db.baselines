-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Code VarChar(5) -- String
SET     @Code = 'first'
DECLARE @Nested_Field Char(1) -- StringFixedLength
SET     @Nested_Field = 'f'

INSERT INTO ComplexPropertyTarget
(
	Id,
	Code,
	Field
)
VALUES
(
	@Id,
	@Code,
	@Nested_Field::BOOLEAN
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Code VarChar(7) -- String
SET     @Code = 'skipped'
DECLARE @Nested_Field Char(1) -- StringFixedLength
SET     @Nested_Field = 'f'

INSERT INTO ComplexPropertyTarget
(
	Id,
	Code,
	Field
)
VALUES
(
	@Id,
	@Code,
	@Nested_Field::BOOLEAN
)

-- Informix.DB2 Informix

MERGE INTO ComplexPropertyTarget Target
USING (
	SELECT 1::Int AS Id, 'first-updated'::NVarChar(50) AS Code, 't'::BOOLEAN::BOOLEAN AS Nested_Field FROM table(set{1})) Source
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

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Code,
	t1.Field
FROM
	ComplexPropertyTarget t1
ORDER BY
	t1.Id

