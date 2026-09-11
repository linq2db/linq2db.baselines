-- SqlCe
UPDATE
	[InheritanceFilter]
SET
	[Child1Field] = 66
WHERE
	[InheritanceFilter].[Id] = 1

-- SqlCe
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

-- SqlCe
SELECT TOP (2)
	[t1].[Id],
	[t1].[Code],
	[t1].[Child1Field]
FROM
	[InheritanceFilter] [t1]
WHERE
	[t1].[Code] IN (12, 11, 1)

-- SqlCe
UPDATE
	[InheritanceFilter]
SET
	[Child1Field] = 66
WHERE
	[InheritanceFilter].[Id] = 1

-- SqlCe
SELECT TOP (2)
	[t1].[Id],
	[t1].[Code],
	[t1].[Child1Field]
FROM
	[InheritanceFilter] [t1]
WHERE
	[t1].[Code] IN (12, 11, 1)

