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

