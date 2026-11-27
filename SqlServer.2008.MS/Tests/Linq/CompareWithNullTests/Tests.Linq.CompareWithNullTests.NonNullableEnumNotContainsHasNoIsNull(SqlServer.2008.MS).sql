-- SqlServer.2008.MS SqlServer.2008
SELECT
	[p].[Id],
	[p].[MyEnum],
	[p].[MyEnum2]
FROM
	[EnumFilterEntity] [p]
WHERE
	[p].[MyEnum2] NOT IN (1)

