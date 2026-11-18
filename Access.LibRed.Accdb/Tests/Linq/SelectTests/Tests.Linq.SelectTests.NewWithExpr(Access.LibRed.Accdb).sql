-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p].[PersonID],
	RTrim([p].[FirstName] + '1', '')
FROM
	[Person] [p]

