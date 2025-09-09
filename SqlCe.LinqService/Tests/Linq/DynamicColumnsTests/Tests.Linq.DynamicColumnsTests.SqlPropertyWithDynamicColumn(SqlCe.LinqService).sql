BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[x].[PersonID] as [ID],
	[x].[FirstName],
	[x].[LastName],
	[x].[MiddleName]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = 'John'

