BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1000

SELECT
	[t1].[Diagnosis],
	[t1].[PersonID_1],
	Avg([t1].[PersonID])
FROM
	(
		SELECT
			[selectParam].[PersonID],
			[a_Patient].[PersonID] as [PersonID_1],
			[a_Patient].[Diagnosis]
		FROM
			[Person] [selectParam]
				LEFT JOIN [Patient] [a_Patient] ON [selectParam].[PersonID] = [a_Patient].[PersonID]
	) [t1]
GROUP BY
	[t1].[PersonID],
	[t1].[PersonID_1],
	[t1].[Diagnosis]
HAVING
	[t1].[PersonID] = 1
ORDER BY
	[t1].[Diagnosis] DESC
LIMIT @take

