-- SqlCe

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
SELECT
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	(
		SELECT 3 AS [Id], 'Janet' AS [Value]
		UNION ALL
		SELECT 4 AS [Id], 'Doe' AS [Value]) [t1]
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [t1].[Id]
WHERE
	[t].[Id] IS NULL

-- SqlCe

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
SELECT
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	(
		SELECT 3 AS [Id], 'Janet' AS [Value]
		UNION ALL
		SELECT 4 AS [Id], 'Doe' AS [Value]) [t1]
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [t1].[Id]
WHERE
	[t].[Id] IS NULL

