-- SqlServer.2017.MS SqlServer.2017

SELECT
	[x].[Name],
	[o].[Id]
FROM
	[Customer] [x]
		LEFT JOIN [Order] [o] ON [x].[Id] = [o].[CustomerId]

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Customer] [t1]

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Name]
FROM
	[Order] [t1]

