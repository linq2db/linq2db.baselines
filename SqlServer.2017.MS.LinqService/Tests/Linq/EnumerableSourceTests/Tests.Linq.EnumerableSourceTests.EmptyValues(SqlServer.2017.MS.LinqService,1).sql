BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TableToInsert]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NULL)
	CREATE TABLE [TableToInsert]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_TableToInsert] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[TableToInsert] [t]
		INNER JOIN (SELECT NULL [Id], NULL [Value] WHERE 1 = 0) [r]([Id], [Value]) ON [t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value] AND [t].[Value] IS NOT NULL AND [r].[Value] IS NOT NULL OR [t].[Value] IS NULL AND [r].[Value] IS NULL)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TableToInsert]

