-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p].[PersonID],
	'123' + [p].[FirstName] + '012345'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND Len('123' + [p].[FirstName] + '012345') - InStr(1, StrReverse(Mid('123' + [p].[FirstName] + '012345', 6, Len('123' + [p].[FirstName] + '012345') - 5)), '321', 1) = 10 AND
	InStr(6, '123' + [p].[FirstName] + '012345', '123', 1) <> 0

