-- Sybase.Managed Sybase

DELETE FROM [InheritanceParent]
FROM
	[InheritanceParent] [t1]

-- Sybase.Managed Sybase

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

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

-- Sybase.Managed Sybase

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

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

