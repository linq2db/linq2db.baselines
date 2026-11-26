-- Access.Jet.Odbc AccessODBC
SELECT
	[x].[Id],
	[x].[Usd],
	IIF(False, 0, NULL)
FROM
	[Amounts] [x]
WHERE
	[x].[Id] = 1
UNION ALL
SELECT
	[x_1].[Id],
	IIF(False, 0, NULL),
	[x_1].[Eur]
FROM
	[Amounts] [x_1]
WHERE
	[x_1].[Id] = 2

