BeforeExecute
-- SqlCe

DROP TABLE [MainEntity]

BeforeExecute
-- SqlCe

CREATE TABLE [MainEntity]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_MainEntity] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [SubEntity]

BeforeExecute
-- SqlCe

CREATE TABLE [SubEntity]
(
	[Id]           Int NOT NULL,
	[MainEntityId] Int NOT NULL
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[MainEntityId]
FROM
	[MainEntity] [m_1]
		INNER JOIN [SubEntity] [d] ON [m_1].[Id] = [d].[MainEntityId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	[x].[Id]
FROM
	[MainEntity] [x]

BeforeExecute
-- SqlCe

DROP TABLE [SubEntity]

BeforeExecute
-- SqlCe

DROP TABLE [MainEntity]

