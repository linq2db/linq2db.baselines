BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Item]', N'U') IS NOT NULL)
	DROP TABLE [Item]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Item]', N'U') IS NULL)
	CREATE TABLE [Item]
	(
		[Id]   Int            NOT NULL,
		[Text] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[ItemValue]', N'U') IS NOT NULL)
	DROP TABLE [ItemValue]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[ItemValue]', N'U') IS NULL)
	CREATE TABLE [ItemValue]
	(
		[Id]     Int     NOT NULL,
		[ItemId] Int     NOT NULL,
		[Value]  Decimal NOT NULL
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_1].[Id],
	[d].[Value]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT
					[x].[Id]
				FROM
					[Item] [x]
			) [t1]
	) [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Id] = [d].[ItemId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Text]
FROM
	(
		SELECT
			[x].[Id],
			[x].[Text],
			(
				SELECT
					SUM([a_Values].[Value])
				FROM
					[ItemValue] [a_Values]
				WHERE
					[x].[Id] = [a_Values].[ItemId]
			) as [c1]
		FROM
			[Item] [x]
	) [t1]
ORDER BY
	Coalesce([t1].[c1], 0)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[ItemValue]', N'U') IS NOT NULL)
	DROP TABLE [ItemValue]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Item]', N'U') IS NOT NULL)
	DROP TABLE [Item]

