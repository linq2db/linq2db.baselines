-- Access.Ace.Odbc AccessODBC
SELECT
	[x].[Id],
	[x].[Usd]
FROM
	[Amounts] [x]
WHERE
	[x].[Id] = 1
UNION ALL
SELECT
	[x_1].[Id],
	IIF([x_1].[Id] = 2, NULL, [x_1].[Usd])
FROM
	[Amounts] [x_1]
WHERE
	[x_1].[Id] = 2

