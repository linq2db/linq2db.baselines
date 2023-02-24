BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1000

SELECT
	[a_Patient].[Diagnosis],
	[a_Patient].[PersonID],
	Avg([t1].[PersonID])
FROM
	[Person] [t1]
		LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
GROUP BY
	[t1].[PersonID],
	[a_Patient].[PersonID],
	[a_Patient].[Diagnosis]
HAVING
	[t1].[PersonID] = 1
ORDER BY
	[a_Patient].[Diagnosis] DESC
LIMIT @take

