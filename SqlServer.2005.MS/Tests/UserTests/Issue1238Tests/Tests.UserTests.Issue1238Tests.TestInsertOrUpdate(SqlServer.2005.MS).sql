﻿BeforeExecute
BeginTransaction
BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

DELETE [t1]
FROM
	[InheritanceParent] [t1]

BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

UPDATE
	[InheritanceParent]
SET
	[TypeDiscriminator] = 1
FROM
	[InheritanceParent] [t1]
WHERE
	[t1].[InheritanceParentId] = 143 AND
	([t1].[Name] IS NULL OR [t1].[Name] = NULL)

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [InheritanceParent]
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
	)
END

BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

UPDATE
	[InheritanceParent]
SET
	[TypeDiscriminator] = 1
FROM
	[InheritanceParent] [t1]
WHERE
	[t1].[InheritanceParentId] = 143 AND
	([t1].[Name] IS NULL OR [t1].[Name] = NULL)

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [InheritanceParent]
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
	)
END

BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
DisposeTransaction
