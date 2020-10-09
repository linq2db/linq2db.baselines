BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [dbo].[Orders]
(
	[Id]   Int             NOT NULL IDENTITY,
	[Name] NVarChar(4000)  NOT NULL,

	CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [dbo].[OrderItems]
(
	[Id]      Int             NOT NULL IDENTITY,
	[OrderId] Int             NOT NULL,
	[Product] NVarChar(4000)  NOT NULL,

	CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	[t].[Id], 
	[t].[Name], 
	[t2].[Id], 
	[t2].[collection], 
	[t2].[Product]
FROM
	[dbo].[Orders] [t]
		LEFT JOIN ( 
			SELECT 
				[t1].[OrderId] as [collection], 
				[t1].[Id], 
				[t1].[Product]
			FROM
				[dbo].[Orders] [cp]
					CROSS APPLY ( 
						SELECT TOP (@take) 
							[OrderItem].[OrderId], 
							[OrderItem].[Id], 
							[OrderItem].[Product]
						FROM
							[dbo].[OrderItems] [OrderItem]
						WHERE
							[cp].[Id] = [OrderItem].[OrderId]
						ORDER BY
							[OrderItem].[Id]
					) [t1]
		) [t2] ON [t].[Id] = [t2].[collection]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [dbo].[OrderItems]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [dbo].[Orders]

