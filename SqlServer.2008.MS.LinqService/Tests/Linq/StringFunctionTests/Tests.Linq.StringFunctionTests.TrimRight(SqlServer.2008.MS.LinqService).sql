BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[pp].[PersonID],
	N'  ' + [pp].[FirstName] + N' '
FROM
	[Person] [pp]
WHERE
	RTRIM(N'  ' + [pp].[FirstName] + N' ') = N'  John' AND
	[pp].[PersonID] = 1

