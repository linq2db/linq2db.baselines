BeforeExecute
-- SqlCe

DROP TABLE [Entity1711]

BeforeExecute
-- SqlCe

CREATE TABLE [Entity1711]
(
	[Id] BigInt NOT NULL,

	CONSTRAINT [PK_Entity1711] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [Relationship1711]

BeforeExecute
-- SqlCe

CREATE TABLE [Relationship1711]
(
	[EntityId] BigInt NOT NULL,
	[Deleted]  Bit    NOT NULL
)

BeforeExecute
-- SqlCe

SELECT
	[t].[Id]
FROM
	[Entity1711] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Relationship1711] [a_relationship]
		WHERE
			[t].[Id] = [a_relationship].[EntityId]
	)

BeforeExecute
-- SqlCe

DROP TABLE [Relationship1711]

BeforeExecute
-- SqlCe

DROP TABLE [Entity1711]

