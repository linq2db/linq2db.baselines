BeforeExecute
-- SqlCe

DROP TABLE [Issue3140Parent]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue3140Parent]
(
	[Id]      Int NOT NULL,
	[ChildId] Int NOT NULL,

	CONSTRAINT [PK_Issue3140Parent] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [Issue3140Child]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue3140Child]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue3140Child] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[ChildId],
	[a_Child].[Id] as [Id_1],
	[a_Child].[Name]
FROM
	[Issue3140Parent] [t1]
		LEFT JOIN [Issue3140Child] [a_Child] ON [t1].[ChildId] = [a_Child].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [Issue3140Child]

BeforeExecute
-- SqlCe

DROP TABLE [Issue3140Parent]

