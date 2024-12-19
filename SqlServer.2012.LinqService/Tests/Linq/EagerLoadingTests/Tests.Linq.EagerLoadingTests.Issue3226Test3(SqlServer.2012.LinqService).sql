BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Item]', N'U') IS NOT NULL)
	DROP TABLE [Item]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Item]', N'U') IS NULL)
	CREATE TABLE [Item]
	(
		[Id]   Int            NOT NULL,
		[Text] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[ItemValue]', N'U') IS NOT NULL)
	DROP TABLE [ItemValue]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[ItemValue]', N'U') IS NULL)
	CREATE TABLE [ItemValue]
	(
		[Id]     Int     NOT NULL,
		[ItemId] Int     NOT NULL,
		[Value]  Decimal NOT NULL
	)

BeforeExecute
-- SqlServer.2012

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
-- SqlServer.2012

SELECT
	[x_1].[Id],
	[x_1].[Text]
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
	) [x_1]
ORDER BY
	[x_1].[c1]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[ItemValue]', N'U') IS NOT NULL)
	DROP TABLE [ItemValue]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Item]', N'U') IS NOT NULL)
	DROP TABLE [Item]

