-- SqlCe

SELECT TOP (2)
	[p].[PersonID] as [Item1],
	[p].[FirstName] as [Item2],
	[p].[LastName] as [Item3],
	'ибн Алёша' as [Item4]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

