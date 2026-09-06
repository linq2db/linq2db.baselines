-- SQLite.MS SQLite
SELECT
	[x].[Discriminator],
	[x].[Id],
	[x].[IntValue],
	[x].[StrValue],
	[x].[DoubleValue]
FROM
	[SetEntityBase] [x]
WHERE
	[x].[Id] = 1
UNION ALL
SELECT
	[x_1].[Discriminator],
	[x_1].[Id],
	[x_1].[IntValue],
	[x_1].[StrValue],
	[x_1].[DoubleValue]
FROM
	[SetEntityBase] [x_1]
WHERE
	[x_1].[Id] = 2
UNION ALL
SELECT
	NULL,
	[x_2].[Id],
	NULL,
	NULL,
	CAST(4.4400000000000004 AS Float)
FROM
	[SetEntityBase] [x_2]
WHERE
	[x_2].[Id] = 3

