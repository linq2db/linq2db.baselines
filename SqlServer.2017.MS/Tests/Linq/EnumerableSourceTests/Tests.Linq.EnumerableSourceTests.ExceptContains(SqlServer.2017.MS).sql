-- SqlServer.2017.MS SqlServer.2017

SELECT
	IIF([r].[PersonID] IN (1, 2, 3), 1, 0)
FROM
	[Person] [r]

