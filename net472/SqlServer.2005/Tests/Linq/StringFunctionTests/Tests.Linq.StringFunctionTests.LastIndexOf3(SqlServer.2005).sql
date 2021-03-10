BeforeExecute
-- SqlServer.2005
DECLARE @Length_2 Int -- Int32
SET     @Length_2 = 9

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN CharIndex(N'123', Left(N'123' + [p].[FirstName] + N'0123451234', 11), 6) = 0
			THEN -1
		ELSE @Length_2 - CharIndex(N'321', Reverse(Substring(N'123' + [p].[FirstName] + N'0123451234', 6, 6)))
	END = 8 AND
	[p].[PersonID] = 1

