-- SqlServer.2017.MS SqlServer.2017
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

