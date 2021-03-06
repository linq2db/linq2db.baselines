﻿BeforeExecute
-- SqlServer.2008

CREATE TABLE [Entity1711]
(
	[Id] BigInt NOT NULL,

	CONSTRAINT [PK_Entity1711] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [Relationship1711]
(
	[EntityId] BigInt NOT NULL,
	[Deleted]  Bit    NOT NULL
)

BeforeExecute
-- SqlServer.2008

SELECT
	[t].[Id]
FROM
	[Entity1711] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Relationship1711] [t1]
		WHERE
			[t].[Id] = [t1].[EntityId]
	)

BeforeExecute
-- SqlServer.2008

DROP TABLE [Relationship1711]

BeforeExecute
-- SqlServer.2008

DROP TABLE [Entity1711]

