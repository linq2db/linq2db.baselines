-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[CreationDate],
	[t1].[Value_1]
FROM
	(
		SELECT
			[x].[Id],
			(
				SELECT
					[a_Confirmations].[Date]
				FROM
					[Confirmation] [a_Confirmations]
				WHERE
					[x].[Id] = [a_Confirmations].[BatchId]
				LIMIT 1
			) as [CreationDate],
			[x].[Value] as [Value_1]
		FROM
			[Batch] [x]
		ORDER BY
			[x].[Id] DESC
		LIMIT 2
	) [t1]
ORDER BY
	[t1].[Id]

