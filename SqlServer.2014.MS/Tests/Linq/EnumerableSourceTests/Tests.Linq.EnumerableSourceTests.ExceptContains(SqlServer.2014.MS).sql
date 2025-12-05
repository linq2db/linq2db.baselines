-- SqlServer.2014.MS SqlServer.2014

SELECT
	IIF([r].[PersonID] IN (1, 2, 3), 1, 0)
FROM
	[Person] [r]

