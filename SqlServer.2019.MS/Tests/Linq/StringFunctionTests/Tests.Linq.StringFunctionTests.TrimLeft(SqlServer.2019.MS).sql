BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[pp].[PersonID],
	N'  ' + [pp].[FirstName] + N' '
FROM
	[Person] [pp]
WHERE
	LTRIM(N'  ' + [pp].[FirstName] + N' ') = N'John ' AND
	[pp].[PersonID] = 1

