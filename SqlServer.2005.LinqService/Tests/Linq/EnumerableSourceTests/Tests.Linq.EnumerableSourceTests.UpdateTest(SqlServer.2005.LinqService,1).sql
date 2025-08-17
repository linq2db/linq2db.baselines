BeforeExecute
-- SqlServer.2005 (asynchronously)

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
-- SqlServer.2005 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

