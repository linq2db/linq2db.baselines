-- Sybase.Managed Sybase

SELECT
	[x].[Name],
	[o].[Id]
FROM
	[Customer] [x]
		LEFT JOIN [Order] [o] ON [x].[Id] = [o].[CustomerId]

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Customer] [t1]

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Name]
FROM
	[Order] [t1]

