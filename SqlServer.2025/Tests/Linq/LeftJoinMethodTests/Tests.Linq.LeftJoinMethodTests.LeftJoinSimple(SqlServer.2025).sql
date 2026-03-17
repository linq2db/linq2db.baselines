-- SqlServer.2025

SELECT
	[c_1].[Name],
	[o].[Name]
FROM
	[Customer] [c_1]
		LEFT JOIN [Order] [o] ON [c_1].[Id] = [o].[CustomerId]

-- SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Customer] [t1]

-- SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Name]
FROM
	[Order] [t1]

