-- SqlServer.2012

SELECT
	[x].[Name],
	[o].[Id]
FROM
	[Customer] [x]
		LEFT JOIN [Order] [o] ON [x].[Id] = [o].[CustomerId]

-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Customer] [t1]

-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Name]
FROM
	[Order] [t1]

