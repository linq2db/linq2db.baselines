BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[p_1].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p_1]
		CROSS JOIN [Person] [p]
WHERE
	[p_1].[PersonID] = [p].[PersonID] AND [p].[PersonID] <> 2 AND
	([p_1].[PersonID] = 1 OR [p_1].[PersonID] = 2)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[p_1].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p_1]
		CROSS JOIN [Person] [p]
WHERE
	[p_1].[PersonID] = [p].[PersonID] AND [p].[PersonID] <> 2 AND
	([p_1].[PersonID] = 1 OR [p_1].[PersonID] = 2)

