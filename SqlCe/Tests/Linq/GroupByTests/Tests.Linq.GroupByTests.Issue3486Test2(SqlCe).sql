-- SqlCe

SELECT
	[gr].[FirstName],
	[gr].[LastName],
	SUM([gr].[PersonID]) as [SUM_1]
FROM
	[Person] [gr]
GROUP BY
	[gr].[FirstName],
	[gr].[LastName]

