-- SqlServer.2016
UPDATE
	[InheritanceFilter]
SET
	[Code] = [InheritanceFilter].[Code],
	[Child1Field] = 77
OUTPUT
	INSERTED.[Id],
	INSERTED.[Code],
	88
INTO [InheritanceFilterOutput]
(
	[Id],
	[Code],
	[Child1Field]
)
WHERE
	[InheritanceFilter].[Id] = 1

-- SqlServer.2016
SELECT TOP (2)
	[c_1].[Id],
	[c_1].[Code],
	[c_1].[Child1Field]
FROM
	[InheritanceFilter] [c_1]
WHERE
	[c_1].[Code] IN (12, 11, 1) AND [c_1].[Id] = 1

-- SqlServer.2016
SELECT TOP (2)
	[t1].[Id],
	[t1].[Code],
	[t1].[Child1Field]
FROM
	[InheritanceFilterOutput] [t1]
WHERE
	[t1].[Code] IN (12, 11, 1)

