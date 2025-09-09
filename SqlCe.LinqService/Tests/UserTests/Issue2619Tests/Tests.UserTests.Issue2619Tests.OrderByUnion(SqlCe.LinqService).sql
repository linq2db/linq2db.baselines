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
UNION
SELECT
	[t2].[FirstName],
	[t2].[PersonID] as [ID],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender]
FROM
	[Person] [t2]

