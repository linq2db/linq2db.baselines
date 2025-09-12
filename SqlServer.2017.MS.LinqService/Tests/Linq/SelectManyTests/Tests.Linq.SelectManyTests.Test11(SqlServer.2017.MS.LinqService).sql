BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

SELECT
	[t].[PersonID],
	[p2].[FirstName]
FROM
	[Person] [t],
	[Person] [p2]
WHERE
	[t].[PersonID] = [p2].[PersonID] AND [t].[PersonID] = 1

