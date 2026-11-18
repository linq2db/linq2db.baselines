-- SqlServer.CS SqlServer.2025
SELECT
	[t].[Name],
	[o].[Name]
FROM
	[Customer] [t]
		LEFT JOIN [Order] [o] ON [t].[Id] = [o].[CustomerId]

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Customer] [t1]

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Name]
FROM
	[Order] [t1]

