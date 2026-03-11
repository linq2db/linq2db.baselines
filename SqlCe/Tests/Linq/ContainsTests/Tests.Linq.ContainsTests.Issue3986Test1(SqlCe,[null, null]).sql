-- SqlCe

SELECT
	[r].[FirstName],
	[r].[PersonID] as [ID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[PersonID] = 3 AND [r].[MiddleName] IS NULL

