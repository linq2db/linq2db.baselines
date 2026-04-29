-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(
		SELECT NULL [Id], NULL [Data] WHERE 1 = 0
		UNION ALL
		VALUES
			(10,'Data 10'), (11,'Data 11')
		) [t1]

