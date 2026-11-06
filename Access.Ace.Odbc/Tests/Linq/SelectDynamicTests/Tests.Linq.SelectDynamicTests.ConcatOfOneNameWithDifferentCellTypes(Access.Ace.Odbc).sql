-- Access.Ace.Odbc AccessODBC
SELECT
	[x].[Usd],
	[x].[Id],
	IIF(False, 0, NULL)
FROM
	[Amounts] [x]
WHERE
	[x].[Id] = 1
UNION ALL
SELECT
	IIF(False, 0, NULL),
	[x_1].[Id],
	[x_1].[Id]
FROM
	[Amounts] [x_1]
WHERE
	[x_1].[Id] = 2

