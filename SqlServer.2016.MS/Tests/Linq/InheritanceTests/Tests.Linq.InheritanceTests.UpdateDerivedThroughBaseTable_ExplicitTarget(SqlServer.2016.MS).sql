-- SqlServer.2016.MS SqlServer.2016
UPDATE
	[InheritanceFilter]
SET
	[Code] = [InheritanceFilter].[Code],
	[Child2Field] = 88
WHERE
	[InheritanceFilter].[Id] = 2

-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (2)
	[c_1].[Id],
	[c_1].[Code],
	[c_1].[Child2Field]
FROM
	[InheritanceFilter] [c_1]
WHERE
	[c_1].[Code] IN (22, 21, 2) AND [c_1].[Id] = 2

