-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Tests_xUpdate_MergeTests_IExplicitComplexProperty_  -- Boolean
SET     $Tests_xUpdate_MergeTests_IExplicitComplexProperty_ = False

INSERT INTO ExplicitComplexPropertyTarget
(
	Id,
	Field
)
VALUES
(
	$Id,
	$Tests_xUpdate_MergeTests_IExplicitComplexProperty_
)

-- DuckDB

MERGE INTO ExplicitComplexPropertyTarget Target
USING (VALUES
	(1,True)
) Source
(
	Id,
	TestsxUpdateMergeTestsIExplicitComplexPropertyField
)
ON (Target.Id = Source.Id)

WHEN MATCHED THEN
UPDATE
SET
	Field = Source.TestsxUpdateMergeTestsIExplicitComplexPropertyField

-- DuckDB

SELECT
	t1.Id,
	t1.Field
FROM
	ExplicitComplexPropertyTarget t1
LIMIT 2

