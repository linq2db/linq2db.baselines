BeforeExecute
-- SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 1000

SELECT TOP (@take)
	[auto16031_1].[value_1],
	[auto16031_1].[id],
	AVG([auto16031_1].[group_1])
FROM
	(
		SELECT
			[auto16031].[PersonID] as [group_1],
			[a_Patient].[PersonID] as [id],
			[a_Patient].[Diagnosis] as [value_1]
		FROM
			[Person] [auto16031]
				LEFT JOIN [Patient] [a_Patient] ON [auto16031].[PersonID] = [a_Patient].[PersonID]
	) [auto16031_1]
GROUP BY
	[auto16031_1].[group_1],
	[auto16031_1].[id],
	[auto16031_1].[value_1]
HAVING
	[auto16031_1].[group_1] = 1
ORDER BY
	[auto16031_1].[value_1] DESC

