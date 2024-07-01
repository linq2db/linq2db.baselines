BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Item]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[Item]', N'U') IS NULL)
	CREATE TABLE [Item]
	(
		[Id]   Int            NOT NULL,
		[Text] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [ItemValue]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[ItemValue]', N'U') IS NULL)
	CREATE TABLE [ItemValue]
	(
		[Id]     Int     NOT NULL,
		[ItemId] Int     NOT NULL,
		[Value]  Decimal NOT NULL
	)

BeforeExecute
-- SqlServer.2019

SELECT
	[m_1].[Id],
	[d].[Value]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Id] = [d].[ItemId]

BeforeExecute
-- SqlServer.2019

SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [ItemValue]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Item]

