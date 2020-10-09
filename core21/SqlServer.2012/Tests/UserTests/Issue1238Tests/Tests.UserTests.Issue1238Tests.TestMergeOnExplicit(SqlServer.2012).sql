﻿BeforeExecute
-- SqlServer.2012

DELETE [t1]
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SqlServer.2012

MERGE INTO [InheritanceParent] [Target]
USING (	VALUES
		(143, NULL, 1)) [Source]
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
;

BeforeExecute
-- SqlServer.2012

SELECT 
	Count(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SqlServer.2012

MERGE INTO [InheritanceParent] [Target]
USING (	VALUES
		(143, NULL, 1)) [Source]
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
;

BeforeExecute
-- SqlServer.2012

SELECT 
	Count(*)
FROM
	[InheritanceParent] [t1]

