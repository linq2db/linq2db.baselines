-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	([p].[PersonID] BOR 2) = 3

