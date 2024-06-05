BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [MainEntity]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[MainEntity]', N'U') IS NULL)
	CREATE TABLE [MainEntity]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_MainEntity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SubEntity]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[SubEntity]', N'U') IS NULL)
	CREATE TABLE [SubEntity]
	(
		[Id]           Int NOT NULL,
		[MainEntityId] Int NOT NULL
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[MainEntityId]
FROM
	[MainEntity] [m_1]
		INNER JOIN [SubEntity] [d] ON [m_1].[Id] = [d].[MainEntityId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[x].[Id]
FROM
	[MainEntity] [x]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SubEntity]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [MainEntity]

