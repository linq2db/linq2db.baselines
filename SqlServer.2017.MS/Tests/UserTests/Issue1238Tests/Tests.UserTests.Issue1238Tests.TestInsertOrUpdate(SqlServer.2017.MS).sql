﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DELETE [t1]
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

MERGE INTO [InheritanceParent] [t1]
USING (SELECT 143 AS [InheritanceParentId], NULL AS [Name]) [s] ON
(
	[t1].[InheritanceParentId] = [s].[InheritanceParentId] AND
	([t1].[Name] IS NULL AND [s].[Name] IS NULL OR [t1].[Name] = [s].[Name])
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[TypeDiscriminator] = 1
WHEN NOT MATCHED THEN
	INSERT
	(
		[InheritanceParentId],
		[Name],
		[TypeDiscriminator]
	)
	VALUES
	(
		143,
		NULL,
		1
	);

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	Count(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

MERGE INTO [InheritanceParent] [t1]
USING (SELECT 143 AS [InheritanceParentId], NULL AS [Name]) [s] ON
(
	[t1].[InheritanceParentId] = [s].[InheritanceParentId] AND
	([t1].[Name] IS NULL AND [s].[Name] IS NULL OR [t1].[Name] = [s].[Name])
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[TypeDiscriminator] = 1
WHEN NOT MATCHED THEN
	INSERT
	(
		[InheritanceParentId],
		[Name],
		[TypeDiscriminator]
	)
	VALUES
	(
		143,
		NULL,
		1
	);

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	Count(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
DisposeTransaction
