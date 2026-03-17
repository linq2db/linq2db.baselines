-- SqlServer.2016.MS SqlServer.2016

SELECT
	IIF([r].[PersonID] IN (1, 2, 3), 1, 0)
FROM
	[Person] [r]

