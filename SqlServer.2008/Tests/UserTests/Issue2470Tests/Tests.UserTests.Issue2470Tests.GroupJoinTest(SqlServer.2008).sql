BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[dbo].[Orders]', N'U') IS NOT NULL)
	DROP TABLE [dbo].[Orders]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[dbo].[Orders]', N'U') IS NULL)
	CREATE TABLE [dbo].[Orders]
	(
		[Id]   Int             NOT NULL IDENTITY,
		[Name] NVarChar(4000)  NOT NULL,

		CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[dbo].[OrderItems]', N'U') IS NOT NULL)
	DROP TABLE [dbo].[OrderItems]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[dbo].[OrderItems]', N'U') IS NULL)
	CREATE TABLE [dbo].[OrderItems]
	(
		[Id]      Int             NOT NULL IDENTITY,
		[OrderId] Int             NOT NULL,
		[Product] NVarChar(4000)  NOT NULL,

		CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008

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

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[dbo].[OrderItems]', N'U') IS NOT NULL)
	DROP TABLE [dbo].[OrderItems]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[dbo].[Orders]', N'U') IS NOT NULL)
	DROP TABLE [dbo].[Orders]

