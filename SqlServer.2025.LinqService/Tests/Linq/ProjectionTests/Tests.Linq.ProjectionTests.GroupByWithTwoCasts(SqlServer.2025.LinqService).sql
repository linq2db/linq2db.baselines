BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 1000

SELECT TOP (@take)
	[a_Patient].[Diagnosis],
	[a_Patient].[PersonID],
	AVG([auto16031].[PersonID])
FROM
	[Person] [auto16031]
		LEFT JOIN [Patient] [a_Patient] ON [auto16031].[PersonID] = [a_Patient].[PersonID]
GROUP BY
	[auto16031].[PersonID],
	[a_Patient].[PersonID],
	[a_Patient].[Diagnosis]
HAVING
	[auto16031].[PersonID] = 1
ORDER BY
	[a_Patient].[Diagnosis] DESC

