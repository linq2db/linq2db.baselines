BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Order]', N'U') IS NOT NULL)
	DROP TABLE [Order]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Order]', N'U') IS NULL)
	CREATE TABLE [Order]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[SubOrder]', N'U') IS NOT NULL)
	DROP TABLE [SubOrder]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[SubOrder]', N'U') IS NULL)
	CREATE TABLE [SubOrder]
	(
		[Id]      Int NOT NULL,
		[OrderId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[SubOrderDetail]', N'U') IS NOT NULL)
	DROP TABLE [SubOrderDetail]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[SubOrderDetail]', N'U') IS NULL)
	CREATE TABLE [SubOrderDetail]
	(
		[Id]         Int            NOT NULL,
		[SubOrderId] Int            NOT NULL,
		[Code]       NVarChar(4000)     NULL,
		[Date]       DateTime2      NOT NULL,
		[IsActive]   Bit            NOT NULL
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 100
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[Id],
	[d_1].[SubOrderId],
	[d_1].[Code],
	[d_1].[Date],
	[d_1].[IsActive]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t2].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[t1].[Id]
				FROM
					(
						SELECT
							[x].[Id]
						FROM
							[Order] [x]
						WHERE
							[x].[Name] LIKE N'cat%' ESCAPE N'~'
						ORDER BY
							[x].[Id]
						OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
					) [t1]
			) [t2]
				INNER JOIN [SubOrder] [d] ON [t2].[Id] = [d].[OrderId]
	) [m_1]
		INNER JOIN [SubOrderDetail] [d_1] ON [m_1].[Id] = [d_1].[SubOrderId]

BeforeExecute
-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 100
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[OrderId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT
					[x].[Id]
				FROM
					[Order] [x]
				WHERE
					[x].[Name] LIKE N'cat%' ESCAPE N'~'
				ORDER BY
					[x].[Id]
				OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
			) [t1]
	) [m_1]
		INNER JOIN [SubOrder] [d] ON [m_1].[Id] = [d].[OrderId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 100
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Order] [x]
WHERE
	[x].[Name] LIKE N'cat%' ESCAPE N'~'
ORDER BY
	[x].[Id]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[SubOrderDetail]', N'U') IS NOT NULL)
	DROP TABLE [SubOrderDetail]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[SubOrder]', N'U') IS NOT NULL)
	DROP TABLE [SubOrder]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Order]', N'U') IS NOT NULL)
	DROP TABLE [Order]

