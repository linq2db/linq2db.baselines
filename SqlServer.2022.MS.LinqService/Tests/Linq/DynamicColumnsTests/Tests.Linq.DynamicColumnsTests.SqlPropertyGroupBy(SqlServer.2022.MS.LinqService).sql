BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[FirstName],
	COUNT(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

