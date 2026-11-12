-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[PersonID] = 3 AND [r].[MiddleName] IS NULL

