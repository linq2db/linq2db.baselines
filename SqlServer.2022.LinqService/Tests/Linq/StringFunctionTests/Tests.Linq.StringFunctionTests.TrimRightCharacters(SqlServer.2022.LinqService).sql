BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[pp].[PersonID],
	N'  ' + [pp].[FirstName] + N' '
FROM
	[Person] [pp]
WHERE
	[pp].[PersonID] = 1 AND RTRIM((N'  ' + [pp].[FirstName] + N' '), N' n') = N'  Joh'

