-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE '%JOHN' AND [p].[PersonID] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE '%JOHN' AND [p].[PersonID] = 1

