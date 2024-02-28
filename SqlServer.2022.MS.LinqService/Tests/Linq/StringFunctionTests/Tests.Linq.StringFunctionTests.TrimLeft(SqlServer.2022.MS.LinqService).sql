BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[pp].[PersonID],
	N'  ' + [pp].[FirstName] + N' '
FROM
	[Person] [pp]
WHERE
	LTRIM(N'  ' + [pp].[FirstName] + N' ') = N'John ' AND
	[pp].[PersonID] = 1

