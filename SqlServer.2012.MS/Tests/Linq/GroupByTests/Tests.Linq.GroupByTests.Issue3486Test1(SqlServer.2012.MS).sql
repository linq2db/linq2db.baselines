BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[gr].[FirstName],
	[gr].[LastName],
	SUM([gr].[PersonID])
FROM
	[Person] [gr]
GROUP BY
	[gr].[FirstName],
	[gr].[LastName]

