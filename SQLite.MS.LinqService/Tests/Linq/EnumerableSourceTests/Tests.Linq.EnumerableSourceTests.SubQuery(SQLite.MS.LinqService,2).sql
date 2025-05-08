BeforeExecute
-- SQLite.MS SQLite

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
				SELECT NULL [Id], NULL [Value], NULL [Id0], NULL [Value0] WHERE 1 = 0
				UNION ALL
				VALUES
					(3,'Janet',3,'Janet'), (4,'Doe',4,'Doe')
				) [r]
		WHERE
			[t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value] OR [t].[Value] IS NULL AND [r].[Value] IS NULL)
	)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

