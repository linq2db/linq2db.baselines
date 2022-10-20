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
	[r].[Id],
	[r].[Value]
FROM
	(
		SELECT 2 AS [Id], 'Janet' AS [Value]
		UNION ALL
		SELECT 3, 'Doe') [r]
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [r].[Id]
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
	[r].[Id],
	[r].[Value]
FROM
	(
		SELECT 2 AS [Id], 'Janet' AS [Value]
		UNION ALL
		SELECT 3, 'Doe') [r]
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [r].[Id]
WHERE
	[t].[Id] IS NULL

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TableToInsert') IS NOT NULL)
	DROP TABLE [TableToInsert]

