-- SqlServer.2016.MS SqlServer.2016
SELECT
	[x].[Id],
	[x].[Flag]
FROM
	[ConvertedFlagRow] [x]
UNION
SELECT
	[x_1].[Id],
	NULL
FROM
	[ConvertedFlagRow] [x_1]

