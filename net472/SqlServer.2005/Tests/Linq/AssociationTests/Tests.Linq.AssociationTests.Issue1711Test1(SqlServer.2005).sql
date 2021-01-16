BeforeExecute
-- SqlServer.2005

CREATE TABLE [Entity1711]
(
	[Id] BigInt NOT NULL,

	CONSTRAINT [PK_Entity1711] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [Relationship1711]
(
	[EntityId] BigInt NOT NULL,
	[Deleted]  Bit    NOT NULL
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [Relationship1711]

BeforeExecute
-- SqlServer.2005

DROP TABLE [Entity1711]

