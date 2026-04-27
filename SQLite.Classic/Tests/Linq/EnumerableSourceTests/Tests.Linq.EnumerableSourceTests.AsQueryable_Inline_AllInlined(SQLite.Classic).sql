-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(
		SELECT NULL [Id], NULL [Data] WHERE 1 = 0
		UNION ALL
		VALUES
			(0,'Data 0'), (1,'Data 1')
		) [t1]

