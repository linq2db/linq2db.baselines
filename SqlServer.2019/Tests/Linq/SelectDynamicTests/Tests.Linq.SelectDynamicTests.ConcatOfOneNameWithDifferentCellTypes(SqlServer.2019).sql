-- SqlServer.2019
SELECT
	[x].[Usd],
	[x].[Id],
	NULL
FROM
	[Amounts] [x]
WHERE
	[x].[Id] = 1
UNION ALL
SELECT
	NULL,
	[x_1].[Id],
	[x_1].[Id]
FROM
	[Amounts] [x_1]
WHERE
	[x_1].[Id] = 2

