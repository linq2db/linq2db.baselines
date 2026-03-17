-- SqlServer.2019

SELECT
	[t].[Id],
	[t].[Name],
	[t1].[Id],
	[t1].[OrderId],
	[t1].[Product]
FROM
	[dbo].[Orders] [t]
		LEFT JOIN [dbo].[Orders] [collection]
			CROSS APPLY (
				SELECT TOP (1)
					[OrderItem].[OrderId],
					[OrderItem].[Id],
					[OrderItem].[Product]
				FROM
					[dbo].[OrderItems] [OrderItem]
				WHERE
					[collection].[Id] = [OrderItem].[OrderId]
				ORDER BY
					[OrderItem].[Id]
			) [t1]
		ON [t].[Id] = [t1].[OrderId]

