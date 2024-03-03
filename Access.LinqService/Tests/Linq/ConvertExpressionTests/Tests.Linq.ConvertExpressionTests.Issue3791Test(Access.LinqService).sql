BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue3791Table]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue3791Table]
(
	[Id]      Int            NOT NULL IDENTITY,
	[OtherId] NVarChar(255)      NULL,

	CONSTRAINT [PK_Issue3791Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue3791GuidTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue3791GuidTable]
(
	[Id] Guid NOT NULL,

	CONSTRAINT [PK_Issue3791GuidTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t2].[Id],
	[t2].[OtherId],
	[t1].[Id]
FROM
	[Issue3791Table] [t2]
		LEFT JOIN (
			SELECT
				[a_Association].[Id],
				CStr([a_Association].[Id]) as [c1]
			FROM
				[Issue3791GuidTable] [a_Association]
		) [t1] ON (([t2].[OtherId] = [t1].[c1] OR [t2].[OtherId] IS NULL AND [t1].[c1] IS NULL))

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue3791GuidTable]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue3791Table]

