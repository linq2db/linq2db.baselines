BeforeExecute
-- SQLite.MS SQLite (asynchronously)

UPDATE
	[TableToInsert]
SET
	[Value] = [r].[Value]
FROM
	(
		SELECT NULL [Id], NULL [Value] WHERE 1 = 0
		UNION ALL
		VALUES
			(2,'Janet Updated'), (3,'Doe Updated')
		) [r]
WHERE
	[TableToInsert].[Id] = [r].[Id]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

