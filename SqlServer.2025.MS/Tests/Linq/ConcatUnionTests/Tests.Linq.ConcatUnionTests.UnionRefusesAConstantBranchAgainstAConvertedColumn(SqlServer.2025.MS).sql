-- SqlServer.2025.MS SqlServer.2025
SELECT
	NULL,
	[x].[Id],
	[x].[Flag]
FROM
	[ConvertedFlagRow] [x]
UNION ALL
SELECT
	CAST(1 AS Bit),
	[x_1].[Id],
	NULL
FROM
	[ConvertedFlagRow] [x_1]

