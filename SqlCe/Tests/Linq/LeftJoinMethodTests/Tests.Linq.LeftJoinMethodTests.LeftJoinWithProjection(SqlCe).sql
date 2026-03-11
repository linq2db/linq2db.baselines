-- SqlCe

SELECT
	[x].[Name] as [CustomerName],
	[o].[Id] as [OrderId]
FROM
	[Customer] [x]
		LEFT JOIN [Order] [o] ON [x].[Id] = [o].[CustomerId]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Customer] [t1]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Name]
FROM
	[Order] [t1]

