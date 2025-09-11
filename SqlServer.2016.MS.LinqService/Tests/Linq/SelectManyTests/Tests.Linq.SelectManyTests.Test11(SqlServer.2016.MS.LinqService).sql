BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	[t].[PersonID],
	[p2].[FirstName]
FROM
	[Person] [t]
		CROSS JOIN [Person] [p2]
WHERE
	[t].[PersonID] = [p2].[PersonID] AND [t].[PersonID] = 1

