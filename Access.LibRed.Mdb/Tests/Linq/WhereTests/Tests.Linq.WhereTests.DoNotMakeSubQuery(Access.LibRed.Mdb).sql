-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[p2].[PersonID],
	RTrim([p2].[FirstName] + '', '')
FROM
	[Person] [p2]
WHERE
	[p2].[PersonID] = 1

