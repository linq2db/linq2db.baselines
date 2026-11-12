-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'joH%' AND [p].[PersonID] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE 'joH%' AND [p].[PersonID] = 1

