-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
UNION ALL
SELECT
	[p_1].[FirstName],
	[p_1].[LastName]
FROM
	[Person] [p_1]
UNION ALL
SELECT
	[p_2].[FirstName],
	[p_2].[LastName]
FROM
	[Person] [p_2]

