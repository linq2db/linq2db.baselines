BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1000

SELECT TOP (@take)
	[auto16031_1].[Diagnosis],
	[auto16031_1].[PersonID],
	AVG([auto16031_1].[ID])
FROM
	(
		SELECT
			[auto16031].[PersonID] as [ID],
			[a_Patient].[PersonID],
			[a_Patient].[Diagnosis]
		FROM
			[Person] [auto16031]
				LEFT JOIN [Patient] [a_Patient] ON [auto16031].[PersonID] = [a_Patient].[PersonID]
	) [auto16031_1]
GROUP BY
	[auto16031_1].[ID],
	[auto16031_1].[PersonID],
	[auto16031_1].[Diagnosis]
HAVING
	[auto16031_1].[ID] = 1
ORDER BY
	[auto16031_1].[Diagnosis] DESC

