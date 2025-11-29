-- SQLite.Classic SQLite

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT NULL [FirstName], NULL [ID], NULL [LastName], NULL [MiddleName], NULL [Gender] WHERE 1 = 0
			UNION ALL
			VALUES
				('Janet',1,NULL,NULL,'M'), ('Doe',2,NULL,NULL,'M')
			) [n] ON [p].[PersonID] = [n].[ID]

