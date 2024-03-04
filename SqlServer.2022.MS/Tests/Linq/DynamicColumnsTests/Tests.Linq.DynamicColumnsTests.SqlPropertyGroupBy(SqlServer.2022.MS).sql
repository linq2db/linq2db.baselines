BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[FirstName],
	Count(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

