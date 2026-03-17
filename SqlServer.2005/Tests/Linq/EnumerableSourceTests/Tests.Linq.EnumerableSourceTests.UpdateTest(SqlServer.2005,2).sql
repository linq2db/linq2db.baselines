-- SqlServer.2005

UPDATE
	[u]
SET
	[u].[Value] = [r].[Value]
FROM
	[TableToInsert] [u],
	(
		SELECT 3 AS [Id], N'Janet Updated' AS [Value]
		UNION ALL
		SELECT 4, N'Doe Updated') [r]
WHERE
	[u].[Id] = [r].[Id]

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

