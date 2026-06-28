-- SqlCe

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[FirstName] + ' ' + [p].[LastName] as [FullName]
FROM
	[Person] [p]

