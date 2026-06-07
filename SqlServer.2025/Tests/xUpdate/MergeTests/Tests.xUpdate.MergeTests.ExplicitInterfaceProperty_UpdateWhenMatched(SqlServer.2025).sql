-- SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Tests_xUpdate_MergeTests_IExplicitComplexProperty_ Bit -- Boolean
SET     @Tests_xUpdate_MergeTests_IExplicitComplexProperty_ = 0

INSERT INTO [ExplicitComplexPropertyTarget]
(
	[Id],
	[Field]
)
VALUES
(
	@Id,
	@Tests_xUpdate_MergeTests_IExplicitComplexProperty_
)

-- SqlServer.2025

MERGE INTO [ExplicitComplexPropertyTarget] [Target]
USING (VALUES
	(1,1)
) [Source]
(
	[Id],
	[TestsxUpdateMergeTestsIExplicitComplexPropertyField]
)
ON ([Target].[Id] = [Source].[Id])

WHEN MATCHED THEN
UPDATE
SET
	[Field] = [Source].[TestsxUpdateMergeTestsIExplicitComplexPropertyField]
;

-- SqlServer.2025

SELECT TOP (2)
	[t1].[Id],
	[t1].[Field]
FROM
	[ExplicitComplexPropertyTarget] [t1]

