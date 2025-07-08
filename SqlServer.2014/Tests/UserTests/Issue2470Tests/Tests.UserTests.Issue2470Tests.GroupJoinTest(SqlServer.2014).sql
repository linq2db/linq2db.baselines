BeforeExecute
-- SqlServer.2014

SELECT
	[t].[Id],
	[t].[Name],
	[collection_1].[Id],
	[collection_1].[OrderId],
	[collection_1].[Product]
FROM
	[dbo].[Orders] [t]
		LEFT JOIN (
			SELECT
				[t1].[Id],
				[t1].[OrderId],
				[t1].[Product]
			FROM
				[dbo].[Orders] [collection]
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
		) [collection_1] ON [t].[Id] = [collection_1].[OrderId]

