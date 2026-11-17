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
	Len([p].[LastName]) - InStr(1, StrReverse([p].[LastName]), 'p', 1) = 2 AND
	InStr(1, [p].[LastName], 'p', 1) <> 0 AND [p].[PersonID] = 1

