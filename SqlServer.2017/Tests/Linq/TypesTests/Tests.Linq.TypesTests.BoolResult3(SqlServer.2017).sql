-- SqlServer.2017

SELECT
	IIF([p].[PersonID] = 1, 1, 0)
FROM
	[Person] [p]

