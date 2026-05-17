-- SqlCe

SELECT
	[c_1].[Name],
	[o].[Name] as [OrderName]
FROM
	[Customer] [c_1]
		LEFT JOIN [Order] [o] ON [c_1].[Id] = [o].[CustomerId]

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

