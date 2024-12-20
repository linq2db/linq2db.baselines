BeforeExecute
-- SqlServer.2012

SELECT
	[p].[PersonID],
	N'123' + [p].[FirstName] + N'0123451234'
FROM
	[Person] [p]
WHERE
	(11 - CharIndex(N'321', Reverse(Substring(N'123' + [p].[FirstName] + N'0123451234', 6, 6)))) - Len(N'123') = 7 AND
	CharIndex(N'123', Left(N'123' + [p].[FirstName] + N'0123451234', 11), 6) <> 0 AND
	[p].[PersonID] = 1

