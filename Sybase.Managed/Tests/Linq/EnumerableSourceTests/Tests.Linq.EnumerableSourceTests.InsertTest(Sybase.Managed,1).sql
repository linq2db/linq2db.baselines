BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TableToInsert') IS NOT NULL)
	DROP TABLE [TableToInsert]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TableToInsert') IS NULL)
	EXECUTE('
		CREATE TABLE [TableToInsert]
		(
			[Id]    Int           NOT NULL,
			[Value] NVarChar(255)     NULL,

			CONSTRAINT [PK_TableToInsert] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
		SELECT 2 AS [Id], 'Janet' AS [Value]
		UNION ALL
		SELECT 3, 'Doe') [t1]
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [t1].[Id]
WHERE
	[t].[Id] IS NULL

BeforeExecute
-- Sybase.Managed Sybase

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
		SELECT 2 AS [Id], 'Janet' AS [Value]
		UNION ALL
		SELECT 3, 'Doe') [t1]
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [t1].[Id]
WHERE
	[t].[Id] IS NULL

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TableToInsert') IS NOT NULL)
	DROP TABLE [TableToInsert]

