BeforeExecute
-- SqlServer.2022

SELECT
	[p2].[PersonID],
	RTRIM(([p2].[FirstName] + N''), N'')
FROM
	[Person] [p2]
WHERE
	[p2].[PersonID] = 1

