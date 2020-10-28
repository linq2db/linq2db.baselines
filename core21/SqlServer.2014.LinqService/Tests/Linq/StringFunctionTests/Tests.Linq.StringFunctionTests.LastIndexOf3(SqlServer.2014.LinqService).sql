BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	IIF(CharIndex(N'123', Left(N'123' + [p].[FirstName] + N'0123451234', 11), 6) = 0, -1, 11 - CharIndex(N'321', Reverse(Substring(N'123' + [p].[FirstName] + N'0123451234', 6, 6))) - 2) = 8 AND
	[p].[PersonID] = 1

