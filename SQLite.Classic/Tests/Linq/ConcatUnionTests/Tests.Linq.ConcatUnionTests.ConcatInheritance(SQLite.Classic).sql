BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Discriminator],
	[x].[Id],
	[x].[DoubleValue],
	[x].[StrValue],
	[x].[IntValue]
FROM
	[SetEntityBase] [x]
WHERE
	[x].[Id] = 1
UNION ALL
SELECT
	[x_1].[Discriminator],
	[x_1].[Id],
	[x_1].[DoubleValue],
	[x_1].[StrValue],
	[x_1].[IntValue]
FROM
	[SetEntityBase] [x_1]
WHERE
	[x_1].[Id] = 2
UNION ALL
SELECT
	[x_2].[Discriminator],
	[x_2].[Id],
	[x_2].[DoubleValue],
	[x_2].[StrValue],
	[x_2].[IntValue]
FROM
	[SetEntityBase] [x_2]
WHERE
	[x_2].[Id] = 3

