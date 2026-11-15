-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[p].[PersonID],
	'123' + [p].[FirstName] + '0123451234'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND 1 = InStr(1, StrReverse(Mid('123' + [p].[FirstName] + '0123451234', 6, 6)), '321', 1) AND
	InStr(6, Left('123' + [p].[FirstName] + '0123451234', 11), '123', 1) <> 0

