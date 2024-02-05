BeforeExecute
-- SqlCe

DROP TABLE [Issue3791Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue3791Table]
(
	[Id]      Int            NOT NULL IDENTITY,
	[OtherId] NVarChar(255)      NULL,

	CONSTRAINT [PK_Issue3791Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [Issue3791GuidTable]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue3791GuidTable]
(
	[Id] UNIQUEIDENTIFIER NOT NULL,

	CONSTRAINT [PK_Issue3791GuidTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[OtherId],
	[a_Association].[Id]
FROM
	[Issue3791Table] [t1]
		LEFT JOIN [Issue3791GuidTable] [a_Association] ON [t1].[OtherId] = Convert(NVarChar(255), [a_Association].[Id])

BeforeExecute
-- SqlCe

DROP TABLE [Issue3791GuidTable]

BeforeExecute
-- SqlCe

DROP TABLE [Issue3791Table]

