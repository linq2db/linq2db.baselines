﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DELETE [t1]
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

MERGE INTO [InheritanceParent] [Target]
USING (VALUES
	(143,NULL,1)
) [Source]
(
	[source_Key1],
	[source_Key2],
	[source_Data]
)
ON ([Target].[InheritanceParentId] = [Source].[source_Key1] AND
([Target].[Name] = [Source].[source_Key2] OR [Target].[Name] IS NULL AND [Source].[source_Key2] IS NULL))

WHEN MATCHED THEN
UPDATE
SET
	[TypeDiscriminator] = [Source].[source_Data]

WHEN NOT MATCHED THEN
INSERT
(
	[InheritanceParentId],
	[Name],
	[TypeDiscriminator]
)
VALUES
(
	[Source].[source_Key1],
	[Source].[source_Key2],
	[Source].[source_Data]
)
;

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

MERGE INTO [InheritanceParent] [Target]
USING (VALUES
	(143,NULL,1)
) [Source]
(
	[source_Key1],
	[source_Key2],
	[source_Data]
)
ON ([Target].[InheritanceParentId] = [Source].[source_Key1] AND
([Target].[Name] = [Source].[source_Key2] OR [Target].[Name] IS NULL AND [Source].[source_Key2] IS NULL))

WHEN MATCHED THEN
UPDATE
SET
	[TypeDiscriminator] = [Source].[source_Data]

WHEN NOT MATCHED THEN
INSERT
(
	[InheritanceParentId],
	[Name],
	[TypeDiscriminator]
)
VALUES
(
	[Source].[source_Key1],
	[Source].[source_Key2],
	[Source].[source_Data]
)
;

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
DisposeTransaction
