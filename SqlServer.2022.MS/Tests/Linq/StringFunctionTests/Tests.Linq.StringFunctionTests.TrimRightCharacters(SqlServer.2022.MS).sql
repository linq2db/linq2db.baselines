BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[pp].[PersonID],
	N'  ' + [pp].[FirstName] + N' '
FROM
	[Person] [pp]
WHERE
	RTRIM((N'  ' + [pp].[FirstName] + N' '), N' n') = N'  Joh' AND
	[pp].[PersonID] = 1

