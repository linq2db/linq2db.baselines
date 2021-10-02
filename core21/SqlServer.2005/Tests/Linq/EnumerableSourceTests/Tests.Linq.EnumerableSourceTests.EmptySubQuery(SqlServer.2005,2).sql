BeforeExecute
-- SqlServer.2005

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
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(SELECT NULL[Id], NULL[Value] WHERE 1 = 0) [t1]
		WHERE
			[t].[Id] = [t1].[Id] AND ([t].[Value] = [t1].[Value] OR [t].[Value] IS NULL AND [t1].[Value] IS NULL)
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NOT NULL)
	DROP TABLE [TableToInsert]

