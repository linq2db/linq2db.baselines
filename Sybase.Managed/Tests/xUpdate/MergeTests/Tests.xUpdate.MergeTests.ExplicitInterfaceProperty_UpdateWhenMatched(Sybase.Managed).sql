-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Tests_xUpdate_MergeTests_I Bit -- Boolean
SET     @Tests_xUpdate_MergeTests_I = 0

INSERT INTO ExplicitComplexPropertyTarget
(
	[Id],
	[Field]
)
VALUES
(
	@Id,
	@Tests_xUpdate_MergeTests_I
)

-- Sybase.Managed Sybase

MERGE INTO ExplicitComplexPropertyTarget [Target]
USING (
	SELECT 1 AS [Id], 1 AS TestsxUpdateMergeTestsIExplicitComplexPropertyField) [Source]
(
	[Id],
	TestsxUpdateMergeTestsIExplicitComplexPropertyField
)
ON ([Target].[Id] = [Source].[Id])

WHEN MATCHED THEN
UPDATE
SET
	[Field] = [Source].TestsxUpdateMergeTestsIExplicitComplexPropertyField

-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Id],
	[t1].[Field]
FROM
	ExplicitComplexPropertyTarget [t1]

