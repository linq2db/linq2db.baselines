BeforeExecute
-- SqlServer.2022

SELECT
	[pp].[PersonID],
	N'  ' + [pp].[FirstName] + N' '
FROM
	[Person] [pp]
WHERE
	(LTRIM((N'  ' + [pp].[FirstName] + N' '), (N' J')) = N'ohn ') AND
	[pp].[PersonID] = 1

