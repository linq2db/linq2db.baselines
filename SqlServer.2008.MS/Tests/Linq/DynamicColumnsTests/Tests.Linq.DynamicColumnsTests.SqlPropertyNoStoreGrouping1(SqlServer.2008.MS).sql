-- SqlServer.2008.MS SqlServer.2008

SELECT
	[g_1].[FirstName],
	COUNT(*)
FROM
	[Person] [g_1]
GROUP BY
	[g_1].[FirstName]
ORDER BY
	[g_1].[FirstName]

