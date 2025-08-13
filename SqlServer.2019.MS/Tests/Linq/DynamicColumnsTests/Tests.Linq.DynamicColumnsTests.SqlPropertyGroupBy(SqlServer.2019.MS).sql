BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[FirstName],
	COUNT(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

