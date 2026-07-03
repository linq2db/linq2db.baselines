-- SqlCe

SELECT TOP (2)
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName],
	'ибн Алёша' as [Item4]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

