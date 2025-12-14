-- SqlServer.2025.MS SqlServer.2025

SELECT
	[pp].[PersonID],
	N'  ' + [pp].[FirstName] + N' '
FROM
	[Person] [pp]
WHERE
	[pp].[PersonID] = 1 AND RTRIM(N'  ' + [pp].[FirstName] + N' ') = N'  John'

