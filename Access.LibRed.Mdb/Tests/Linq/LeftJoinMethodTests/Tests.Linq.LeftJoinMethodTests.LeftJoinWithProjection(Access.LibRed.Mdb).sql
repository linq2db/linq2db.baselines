-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[x].[Name],
	[o].[Id]
FROM
	[Customer] [x]
		LEFT JOIN [Order] [o] ON ([x].[Id] = [o].[CustomerId])

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Customer] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Name]
FROM
	[Order] [t1]

