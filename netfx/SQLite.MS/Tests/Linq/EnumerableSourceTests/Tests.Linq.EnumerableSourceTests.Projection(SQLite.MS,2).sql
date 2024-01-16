BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	(
		SELECT NULL [FirstName], NULL [PersonID], NULL [LastName], NULL [MiddleName], NULL [Gender] WHERE 1 = 0
		UNION ALL
		VALUES
			('Janet',3,NULL,NULL,'M'), ('Doe',4,NULL,NULL,'M')
		) [t1]

