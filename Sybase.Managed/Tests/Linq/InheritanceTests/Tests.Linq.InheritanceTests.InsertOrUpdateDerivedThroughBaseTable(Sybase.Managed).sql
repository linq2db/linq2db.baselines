-- Sybase.Managed Sybase
UPDATE
	[InheritanceFilter]
SET
	[Child1Field] = 66
FROM
	[InheritanceFilter] [t1]
WHERE
	[t1].[Id] = 1

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [InheritanceFilter]
	(
		[Id],
		[Code],
		[Child1Field]
	)
	VALUES
	(
		1,
		1,
		55
	)
END

-- Sybase.Managed Sybase
SELECT TOP 2
	[t1].[Id],
	[t1].[Code],
	[t1].[Child1Field]
FROM
	[InheritanceFilter] [t1]
WHERE
	[t1].[Code] IN (12, 11, 1)

-- Sybase.Managed Sybase
UPDATE
	[InheritanceFilter]
SET
	[Child1Field] = 66
FROM
	[InheritanceFilter] [t1]
WHERE
	[t1].[Id] = 1

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [InheritanceFilter]
	(
		[Id],
		[Code],
		[Child1Field]
	)
	VALUES
	(
		1,
		1,
		55
	)
END

-- Sybase.Managed Sybase
SELECT TOP 2
	[t1].[Id],
	[t1].[Code],
	[t1].[Child1Field]
FROM
	[InheritanceFilter] [t1]
WHERE
	[t1].[Code] IN (12, 11, 1)

