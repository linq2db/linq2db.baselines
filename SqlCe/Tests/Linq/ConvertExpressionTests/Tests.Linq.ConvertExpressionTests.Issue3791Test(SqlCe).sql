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
	[t2].[Id],
	[t2].[OtherId],
	[t1].[Id] as [Id_1]
FROM
	[Issue3791Table] [t2]
		LEFT JOIN (
			SELECT
				[a_Association].[Id],
				CAST([a_Association].[Id] AS NVarChar(36)) as [c1]
			FROM
				[Issue3791GuidTable] [a_Association]
		) [t1] ON ([t2].[OtherId] = [t1].[c1] OR [t2].[OtherId] IS NULL AND [t1].[c1] IS NULL)

BeforeExecute
-- SqlCe

DROP TABLE [Issue3791GuidTable]

BeforeExecute
-- SqlCe

DROP TABLE [Issue3791Table]

