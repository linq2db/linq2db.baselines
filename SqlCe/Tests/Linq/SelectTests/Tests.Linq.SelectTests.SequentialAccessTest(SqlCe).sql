-- SqlCe

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[PersonID] as [IDNullable],
	[p].[LastName],
	[p].[FirstName] + ' ' + [p].[LastName] as [FullName]
FROM
	[Person] [p]

