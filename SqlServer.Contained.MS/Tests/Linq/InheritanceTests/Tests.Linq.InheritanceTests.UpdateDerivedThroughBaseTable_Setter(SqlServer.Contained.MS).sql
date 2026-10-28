-- SqlServer.Contained.MS SqlServer.2019
UPDATE
	[InheritanceFilter]
SET
	[Code] = [InheritanceFilter].[Code],
	[Child1Field] = 99
WHERE
	[InheritanceFilter].[Id] = 1

-- SqlServer.Contained.MS SqlServer.2019
SELECT TOP (2)
	[c_1].[Id],
	[c_1].[Code],
	[c_1].[Child1Field]
FROM
	[InheritanceFilter] [c_1]
WHERE
	[c_1].[Code] IN (12, 11, 1) AND [c_1].[Id] = 1

