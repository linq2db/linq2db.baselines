BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @p NVarChar(4000) -- String
SET     @p = N'123'

SELECT
	[p].[PersonID],
	N'123' + [p].[FirstName] + N'0123451234'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND 1 = CharIndex(N'321', Reverse(Substring(N'123' + [p].[FirstName] + N'0123451234', 6, 6))) AND
	(CharIndex(@p, Left(N'123' + [p].[FirstName] + N'0123451234', 11), 6) <> 0 OR CharIndex(@p, Left(N'123' + [p].[FirstName] + N'0123451234', 11), 6) IS NULL)

