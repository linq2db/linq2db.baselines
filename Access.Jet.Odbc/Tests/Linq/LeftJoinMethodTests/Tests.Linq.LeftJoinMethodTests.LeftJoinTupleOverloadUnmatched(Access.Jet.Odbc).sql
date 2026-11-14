-- Access.Jet.Odbc AccessODBC
SELECT
	[t].[Name]
FROM
	[Customer] [t]
		LEFT JOIN [Order] [o] ON ([t].[Id] = [o].[CustomerId])
WHERE
	[o].[Id] IS NULL

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

