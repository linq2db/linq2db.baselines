-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	(
		SELECT NULL [item], NULL [item0] WHERE 1 = 0
		UNION ALL
		VALUES
			('Janet','Janet'), ('Doe','Doe'), ('John','John'),
			('Doe','Doe')
		) [n]
		INNER JOIN [Person] [p] ON [n].[item] = [p].[LastName]

