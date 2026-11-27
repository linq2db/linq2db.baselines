-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[x].[FirstName],
	RANK() OVER (ORDER BY ([x].[PersonID] = 2) DESC)
FROM
	[Person] [x]

