BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1000

SELECT TOP (@take)
	[t2].[Diagnosis],
	[t2].[id],
	[t2].[AVG_1]
FROM
	(
		SELECT
			[a_Patient].[Diagnosis],
			[a_Patient].[PersonID] as [id],
			AVG([t1].[PersonID]) as [AVG_1]
		FROM
			[Person] [t1]
				LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
		GROUP BY
			[t1].[PersonID],
			[a_Patient].[PersonID],
			[a_Patient].[Diagnosis]
		HAVING
			[t1].[PersonID] = 1
	) [t2]
ORDER BY
	[t2].[Diagnosis] DESC

