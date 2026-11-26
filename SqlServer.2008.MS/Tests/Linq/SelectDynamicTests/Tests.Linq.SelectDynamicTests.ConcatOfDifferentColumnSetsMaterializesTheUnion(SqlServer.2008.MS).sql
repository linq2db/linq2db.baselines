-- SqlServer.2008.MS SqlServer.2008
SELECT
	[x].[Id],
	[x].[Usd],
	NULL
FROM
	[Amounts] [x]
WHERE
	[x].[Id] = 1
UNION ALL
SELECT
	[x_1].[Id],
	NULL,
	[x_1].[Eur]
FROM
	[Amounts] [x_1]
WHERE
	[x_1].[Id] = 2

