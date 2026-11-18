-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	StrReverse([p].[FirstName]) = 'nhoJ' AND [p].[PersonID] = 1

