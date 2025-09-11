BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t]
		CROSS JOIN [Person] [t1]
WHERE
	[t1].[PersonID] = 1

