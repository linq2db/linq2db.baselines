-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123n456' LIKE '%n%'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123n456' NOT LIKE '%n%'

