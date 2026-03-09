-- SQLite.Classic SQLite

SELECT
	[u].[PersonID],
	[x].[PersonID]
FROM
	[Person] [u]
		INNER JOIN (
			SELECT
				[l].[PersonID]
			FROM
				(
					SELECT
						1 as [c1]
				) [r]
					LEFT JOIN [Patient] [l] ON 1=1
		) [x] ON [x].[PersonID] = [u].[PersonID]

