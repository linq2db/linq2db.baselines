-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Tests_xUpdate_MergeTests_IExplicitComplexProperty_ Char(1) -- StringFixedLength
SET     @Tests_xUpdate_MergeTests_IExplicitComplexProperty_ = 'f'

INSERT INTO ExplicitComplexPropertyTarget
(
	Id,
	Field
)
VALUES
(
	@Id,
	@Tests_xUpdate_MergeTests_IExplicitComplexProperty_::BOOLEAN
)

-- Informix.DB2 Informix

MERGE INTO ExplicitComplexPropertyTarget Target
USING (
	SELECT 1::Int AS Id, 't'::BOOLEAN::BOOLEAN AS TestsxUpdateMergeTestsIExplicitComplexPropertyField FROM table(set{1})) Source
(
	Id,
	TestsxUpdateMergeTestsIExplicitComplexPropertyField
)
ON (Target.Id = Source.Id)

WHEN MATCHED THEN
UPDATE
SET
	Field = Source.TestsxUpdateMergeTestsIExplicitComplexPropertyField

-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Id,
	t1.Field
FROM
	ExplicitComplexPropertyTarget t1

