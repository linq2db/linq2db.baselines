BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NOT NULL)
	DROP TABLE [TableToInsert]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NULL)
	CREATE TABLE [TableToInsert]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_TableToInsert] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[TableToInsert] [t]
		INNER JOIN (SELECT NULL [Id], NULL [Value] WHERE 1 = 0) [r] ON [t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value] OR [t].[Value] IS NULL AND [r].[Value] IS NULL)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NOT NULL)
	DROP TABLE [TableToInsert]

