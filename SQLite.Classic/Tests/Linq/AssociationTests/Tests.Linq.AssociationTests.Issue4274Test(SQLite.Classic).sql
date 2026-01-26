-- SQLite.Classic SQLite

SELECT
	[serv].[PersonID]
FROM
	(
		SELECT DISTINCT
			[gr].[PersonID]
		FROM
			[Patient] [gr]
	) [serv]
		INNER JOIN [Person] [a_Person] ON [serv].[PersonID] = [a_Person].[PersonID]
WHERE
	[a_Person].[PersonID] = 1

