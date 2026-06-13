-- Access.Jet.OleDb AccessOleDb

SELECT
	[c_2].[Id],
	[o].[Id]
FROM
	(
		SELECT TOP 10
			[c_1].[Id]
		FROM
			[Customer] [c_1]
		WHERE
			[c_1].[Id] > 0
	) [c_2]
		LEFT JOIN [Order] [o] ON ([c_2].[Id] = [o].[CustomerId])

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Customer] [t1]

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Name]
FROM
	[Order] [t1]

