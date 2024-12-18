BeforeExecute
-- SqlServer.2022

SELECT
	[pp].[PersonID],
	N'  ' + [pp].[FirstName] + N' '
FROM
	[Person] [pp]
WHERE
	[pp].[PersonID] = 1 AND LTRIM((N'  ' + [pp].[FirstName] + N' '), (N' ')) = N'John ' AND
	LTRIM((N'  ' + [pp].[FirstName] + N' '), (N' ')) IS NOT NULL

