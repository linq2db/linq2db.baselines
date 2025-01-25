BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[PersonID],
	[p2].[FirstName]
FROM
	[Person] [t],
	[Person] [p2]
WHERE
	[t].[PersonID] = [p2].[PersonID] AND [t].[PersonID] = 1

