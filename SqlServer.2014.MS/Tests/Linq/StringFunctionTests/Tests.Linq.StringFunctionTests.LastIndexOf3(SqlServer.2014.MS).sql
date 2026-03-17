-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[PersonID],
	N'123' + [p].[FirstName] + N'0123451234'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND 1 = CharIndex(N'321', Reverse(Substring(N'123' + [p].[FirstName] + N'0123451234', 6, 6))) AND
	CharIndex(N'123', Left(N'123' + [p].[FirstName] + N'0123451234', 11), 6) <> 0

