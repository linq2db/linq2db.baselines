-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(
		SELECT NULL [Id], NULL [Data] WHERE 1 = 0
		UNION ALL
		VALUES
			(20,'Data 20'), (21,'Data 21'), (22,'Data 22')
		) [t1]

