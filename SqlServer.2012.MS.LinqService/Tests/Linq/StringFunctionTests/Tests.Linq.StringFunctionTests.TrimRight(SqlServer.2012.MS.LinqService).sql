BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	[pp].[PersonID],
	N'  ' + [pp].[FirstName] + N' '
FROM
	[Person] [pp]
WHERE
	[pp].[PersonID] = 1 AND RTRIM(N'  ' + [pp].[FirstName] + N' ') = N'  John'

