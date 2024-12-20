BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[pp].[PersonID],
	N'  ' + [pp].[FirstName] + N' '
FROM
	[Person] [pp]
WHERE
	LTrim(RTrim(N'  ' + [pp].[FirstName] + N' ')) = N'John' AND
	[pp].[PersonID] = 1

