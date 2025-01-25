BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[p].[FirstName],
	COUNT(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

