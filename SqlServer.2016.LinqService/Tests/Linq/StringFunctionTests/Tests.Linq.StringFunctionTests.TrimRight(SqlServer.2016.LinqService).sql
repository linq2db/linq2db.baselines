BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	[pp].[PersonID],
	N'  ' + [pp].[FirstName] + N' '
FROM
	[Person] [pp]
WHERE
	[pp].[PersonID] = 1 AND RTRIM(N'  ' + [pp].[FirstName] + N' ') = N'  John'

