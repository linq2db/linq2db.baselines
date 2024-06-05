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
	[x].[Id],
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
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[SubEntity] [a_SubEntities_1]
		WHERE
			[x].[Id] = [a_SubEntities_1].[MainEntityId]
	)

BeforeExecute
-- SqlCe

DROP TABLE [SubEntity]

BeforeExecute
-- SqlCe

DROP TABLE [MainEntity]

