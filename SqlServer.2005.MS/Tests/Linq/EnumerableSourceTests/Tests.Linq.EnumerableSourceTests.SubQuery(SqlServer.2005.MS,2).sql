BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NOT NULL)
	DROP TABLE [TableToInsert]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NULL)
	CREATE TABLE [TableToInsert]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_TableToInsert] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
SELECT 3,N'Janet' UNION ALL
SELECT 4,N'Doe'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
			(
				SELECT 3 AS [Id], N'Janet' AS [Value]
				UNION ALL
				SELECT 4, N'Doe') [r]
		WHERE
			[t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value] AND [t].[Value] IS NOT NULL AND [r].[Value] IS NOT NULL OR [t].[Value] IS NULL AND [r].[Value] IS NULL)
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NOT NULL)
	DROP TABLE [TableToInsert]

