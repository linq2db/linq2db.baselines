BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[z].[FirstName],
	[z].[PersonID] as [ID],
	[z].[LastName],
	[z].[MiddleName],
	[z].[Gender]
FROM
	[Person] [z]
WHERE
	[z].[PersonID] = 1

