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

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	(
		SELECT 2 AS [Id], N'Janet' AS [Value]
		UNION ALL
		SELECT 3, N'Doe') [t1]
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [t1].[Id]
WHERE
	[t].[Id] IS NULL

BeforeExecute
-- SqlServer.2005

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	(
		SELECT 2 AS [Id], N'Janet' AS [Value]
		UNION ALL
		SELECT 3, N'Doe') [t1]
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [t1].[Id]
WHERE
	[t].[Id] IS NULL

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NOT NULL)
	DROP TABLE [TableToInsert]

