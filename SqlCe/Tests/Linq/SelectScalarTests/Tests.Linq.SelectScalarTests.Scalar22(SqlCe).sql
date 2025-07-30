BeforeExecute
-- SqlCe

SELECT
	[p1].[FirstName],
	[p1].[PersonID] as [ID],
	[p1].[LastName],
	[p1].[MiddleName],
	[p1].[Gender]
FROM
	[Person] [p1]
WHERE
	[p1].[PersonID] = 1

