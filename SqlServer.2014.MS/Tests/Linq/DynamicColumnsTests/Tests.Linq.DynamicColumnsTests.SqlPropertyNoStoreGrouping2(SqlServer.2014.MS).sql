BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[g_1].[FirstName],
	[g_1].[LastName],
	COUNT(*)
FROM
	[Person] [g_1]
GROUP BY
	[g_1].[FirstName],
	[g_1].[LastName]
ORDER BY
	[g_1].[FirstName]

