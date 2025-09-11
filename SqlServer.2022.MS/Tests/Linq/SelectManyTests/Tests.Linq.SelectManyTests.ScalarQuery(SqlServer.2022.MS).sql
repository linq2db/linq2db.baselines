BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p2].[PersonID],
	[p1].[FirstName]
FROM
	[Person] [p1]
		CROSS JOIN [Person] [p2]
WHERE
	[p1].[PersonID] = [p2].[PersonID]

