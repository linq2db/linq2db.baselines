BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[p].[PersonID],
	RTRIM(([p].[FirstName] + N'1'), N'')
FROM
	[Person] [p]

