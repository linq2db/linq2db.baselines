-- SqlCe

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[FirstName] + ' ' + [p].[LastName] as [FullName]
FROM
	[Person] [p]

