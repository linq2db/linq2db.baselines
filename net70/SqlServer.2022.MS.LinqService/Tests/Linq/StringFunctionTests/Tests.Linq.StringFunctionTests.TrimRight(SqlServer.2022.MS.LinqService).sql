BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	RTRIM(N'  ' + [p].[FirstName] + N' ') = N'  John' AND
	[p].[PersonID] = 1

