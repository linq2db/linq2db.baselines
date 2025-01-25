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
SELECT 2,N'Janet' UNION ALL
SELECT 3,N'Doe'

BeforeExecute
-- SqlServer.2005

UPDATE
	[u]
SET
	[u].[Value] = [r].[Value]
FROM
	[TableToInsert] [u],
	(
		SELECT 2 AS [Id], N'Janet Updated' AS [Value]
		UNION ALL
		SELECT 3, N'Doe Updated') [r]
WHERE
	[u].[Id] = [r].[Id]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NOT NULL)
	DROP TABLE [TableToInsert]

