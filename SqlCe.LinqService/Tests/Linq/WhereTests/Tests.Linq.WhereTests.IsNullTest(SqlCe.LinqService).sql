BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	[nm].[MiddleName] IS NOT NULL

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

