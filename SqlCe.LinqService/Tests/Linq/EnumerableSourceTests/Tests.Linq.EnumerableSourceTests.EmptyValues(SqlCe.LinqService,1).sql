BeforeExecute
-- SqlCe

DROP TABLE [TableToInsert]

BeforeExecute
-- SqlCe

CREATE TABLE [TableToInsert]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_TableToInsert] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

SELECT
	[t].[Id],
	[t].[Value] as [Value_1]
FROM
	[TableToInsert] [t]
		INNER JOIN (SELECT NULL [Id], NULL [Value] WHERE 1 = 0) [r] ON [t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value] OR [t].[Value] IS NULL AND [r].[Value] IS NULL)

BeforeExecute
-- SqlCe

DROP TABLE [TableToInsert]

