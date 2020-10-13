BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [InheritanceParent]
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [InheritanceParent] [Target]
USING (	SELECT 143, NULL, 1) [Source]
(
	[Key1],
	[Key2],
	[Data_1]
)
ON ([Target].[InheritanceParentId] = [Source].[Key1] AND ([Target].[Name] IS NULL AND [Source].[Key2] IS NULL OR [Target].[Name] = [Source].[Key2]))

WHEN MATCHED THEN
UPDATE
SET
	[Target].[TypeDiscriminator] = [Source].[Data_1]

WHEN NOT MATCHED THEN
INSERT
(
	[InheritanceParentId],
	[Name],
	[TypeDiscriminator]
)
VALUES
(
	[Source].[Key1],
	[Source].[Key2],
	[Source].[Data_1]
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [InheritanceParent] [Target]
USING (	SELECT 143, NULL, 1) [Source]
(
	[Key1],
	[Key2],
	[Data_1]
)
ON ([Target].[InheritanceParentId] = [Source].[Key1] AND ([Target].[Name] IS NULL AND [Source].[Key2] IS NULL OR [Target].[Name] = [Source].[Key2]))

WHEN MATCHED THEN
UPDATE
SET
	[Target].[TypeDiscriminator] = [Source].[Data_1]

WHEN NOT MATCHED THEN
INSERT
(
	[InheritanceParentId],
	[Name],
	[TypeDiscriminator]
)
VALUES
(
	[Source].[Key1],
	[Source].[Key2],
	[Source].[Data_1]
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[InheritanceParent] [t1]

