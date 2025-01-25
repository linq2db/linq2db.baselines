BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[MainEntity]', N'U') IS NOT NULL)
	DROP TABLE [MainEntity]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[MainEntity]', N'U') IS NULL)
	CREATE TABLE [MainEntity]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_MainEntity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[SubEntity]', N'U') IS NOT NULL)
	DROP TABLE [SubEntity]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[SubEntity]', N'U') IS NULL)
	CREATE TABLE [SubEntity]
	(
		[Id]           Int NOT NULL,
		[MainEntityId] Int NOT NULL
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[x].[Id]
FROM
	[MainEntity] [x]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[SubEntity]', N'U') IS NOT NULL)
	DROP TABLE [SubEntity]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[MainEntity]', N'U') IS NOT NULL)
	DROP TABLE [MainEntity]

