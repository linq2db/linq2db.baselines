-- SQLite.MS SQLite

SELECT
	[u].[PersonID],
	[x].[PersonID],
	[x].[Diagnosis]
FROM
	[Person] [u]
		INNER JOIN (
			SELECT
				[l].[PersonID],
				[l].[Diagnosis]
			FROM
				(
					SELECT
						1 as [c1]
				) [r]
					LEFT JOIN [Patient] [l] ON 1=1
		) [x] ON [x].[PersonID] = [u].[PersonID]

