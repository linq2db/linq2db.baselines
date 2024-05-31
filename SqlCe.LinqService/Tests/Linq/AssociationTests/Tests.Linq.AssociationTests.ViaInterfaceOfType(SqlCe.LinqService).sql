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
-- SqlCe

SELECT
	[t1].[COUNT_1]
FROM
	[MainEntity] [x]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[SubEntity] [a_SubEntities]
			WHERE
				[x].[Id] = [a_SubEntities].[MainEntityId]
		) [t1]

BeforeExecute
-- SqlCe

DROP TABLE [SubEntity]

BeforeExecute
-- SqlCe

DROP TABLE [MainEntity]

