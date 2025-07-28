BeforeExecute
BeginTransaction
BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [InheritanceParent]
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [InheritanceParent] [Target]
USING (
	SELECT 143 AS [Key1], CAST(NULL AS NVarChar(255)) AS [Key2], 1 AS [Data_1]) [Source]
(
	[Key1],
	[Key2],
	[Data_1]
)
ON ([Target].[InheritanceParentId] = [Source].[Key1] AND
([Target].[Name] = [Source].[Key2] OR [Target].[Name] IS NULL AND [Source].[Key2] IS NULL))

WHEN MATCHED THEN
UPDATE
SET
	[TypeDiscriminator] = [Source].[Data_1]

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
	COUNT(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [InheritanceParent] [Target]
USING (
	SELECT 143 AS [Key1], CAST(NULL AS NVarChar(255)) AS [Key2], 1 AS [Data_1]) [Source]
(
	[Key1],
	[Key2],
	[Data_1]
)
ON ([Target].[InheritanceParentId] = [Source].[Key1] AND
([Target].[Name] = [Source].[Key2] OR [Target].[Name] IS NULL AND [Source].[Key2] IS NULL))

WHEN MATCHED THEN
UPDATE
SET
	[TypeDiscriminator] = [Source].[Data_1]

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
	COUNT(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
DisposeTransaction
