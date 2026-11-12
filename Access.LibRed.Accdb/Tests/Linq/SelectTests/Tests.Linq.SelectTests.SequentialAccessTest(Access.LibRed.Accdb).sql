-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[FirstName] + ' ' + [p].[LastName]
FROM
	[Person] [p]

