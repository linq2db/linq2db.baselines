-- Access.Jet.Odbc AccessODBC
SELECT
	[x].[Name],
	[o].[Id]
FROM
	[Customer] [x]
		LEFT JOIN [Order] [o] ON ([x].[Id] = [o].[CustomerId])

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Customer] [t1]

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Name]
FROM
	[Order] [t1]

