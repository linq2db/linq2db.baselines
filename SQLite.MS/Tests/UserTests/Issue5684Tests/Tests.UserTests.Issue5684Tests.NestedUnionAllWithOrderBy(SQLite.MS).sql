-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[IsVisible]
FROM
	(
		SELECT
			[x].[Name],
			[x].[Id],
			[x].[IsVisible]
		FROM
			[User] [x]
		WHERE
			[x].[IsVisible]
		UNION ALL
		SELECT
			[x_1].[Name],
			[x_1].[Id],
			[x_1].[IsVisible]
		FROM
			[User] [x_1]
		WHERE
			NOT [x_1].[IsVisible]
		UNION ALL
		SELECT
			[x_2].[Name],
			[x_2].[Id],
			[x_2].[IsVisible]
		FROM
			[User] [x_2]
		WHERE
			Length([x_2].[Name]) > 10
		UNION ALL
		SELECT
			[x_3].[Name],
			[x_3].[Id],
			[x_3].[IsVisible]
		FROM
			[User] [x_3]
		WHERE
			Length([x_3].[Name]) < 1000
	) [t1]
ORDER BY
	[t1].[Name] DESC

