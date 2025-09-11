BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[p].[PersonID],
	[p2].[FirstName]
FROM
	[Person] [p]
		CROSS JOIN [Person] [p2]
WHERE
	([p].[PersonID] = 1 OR [p].[PersonID] = 2) AND [p2].[PersonID] <> 2 AND
	[p].[PersonID] = [p2].[PersonID]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[p].[PersonID],
	[p2].[FirstName]
FROM
	[Person] [p]
		CROSS JOIN [Person] [p2]
WHERE
	([p].[PersonID] = 1 OR [p].[PersonID] = 2) AND [p2].[PersonID] <> 2 AND
	[p].[PersonID] = [p2].[PersonID]

