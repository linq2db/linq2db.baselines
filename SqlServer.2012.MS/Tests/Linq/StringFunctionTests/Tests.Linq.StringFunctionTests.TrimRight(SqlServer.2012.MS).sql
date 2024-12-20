BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[pp].[PersonID],
	N'  ' + [pp].[FirstName] + N' '
FROM
	[Person] [pp]
WHERE
	RTRIM(N'  ' + [pp].[FirstName] + N' ') = N'  John' AND
	[pp].[PersonID] = 1

