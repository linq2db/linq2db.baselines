BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[gr].[FirstName],
	[gr].[LastName],
	SUM([gr].[PersonID])
FROM
	[Person] [gr]
GROUP BY
	[gr].[FirstName],
	[gr].[LastName]

