BeforeExecute
-- SqlServer.2008

SELECT
	[p].[PersonID],
	N'123' + [p].[FirstName] + N'0123451234'
FROM
	[Person] [p]
WHERE
	CASE
		WHEN CharIndex(N'123', Left(N'123' + [p].[FirstName] + N'0123451234', 11), 6) = 0
			THEN -1
		ELSE 11 - CharIndex(N'321', Reverse(Substring(N'123' + [p].[FirstName] + N'0123451234', 6, 6))) - 2
	END = 8 AND
	[p].[PersonID] = 1

